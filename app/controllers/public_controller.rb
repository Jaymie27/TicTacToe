class PublicController < ApplicationController 
    layout "application"
    before_action :authenticate_user!

    def profil
        @games = Game.where(creator: current_user).or(Game.where(opponent: current_user))
        @wins = Game.where(winner: current_user)
        respond_to do |format|
            format.html
          end
    end

    def edit
        respond_to do |format|
            format.html
        end
    end

    def update
        if current_user.update(params.require(:user).permit(:password))
            sign_in(current_user, :bypass => true)
            flash[:success] = "Votre compte a été modifié avec succès"
            redirect_to "/"
        else
            flash.now[:error] = "Erreur: Votre compte n'a pu être modifié"
            render :edit
        end
    end

    def game
        respond_to do |format|
            format.html
        end
    end

end