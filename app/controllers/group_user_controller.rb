class GroupuserController < ApplicationController
    def index
      groupuser = Groupuser.all
      render json: groupuser
    end
    
      def show
        user = User.where("groupuser_id = ?", params[:id])
        render json: user 
      end
    
      def create
        groupuser = Groupuser.create(groupuser_params)
        if groupuser.save
          render json: Groupuser.all
        else
          render json: errors(groupuser), status: 422
        end
      end
    
      def update
        groupuser = Groupuser.find(params["id"])
        if groupuser.update(groupuser_params)
          render json: Groupuser.all
        else
          render json: errors(groupuser), status: 422
        end
      end
    
      def destroy
        if Groupuser.find(params["id"]).destroy!
          render json: Groupuser.all
        else
          render json: errors(groupuser), status: 422
        end
      end
    
      private
    
      def groupuser_params
        params.require(:groupuser).permit(:id, :name,)
      end
end
