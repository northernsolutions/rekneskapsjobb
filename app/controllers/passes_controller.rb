class PassesController < ApplicationController
    def new
        @pass = Pass.new
    end

    def create
        @pass = Pass.new(params[:pass])
        @pass.request = request
        if @pass.deliver
           flash.now[:error] = nil
        else
           flash.now[:error] = 'Cannot send application.'
           render :new
        end
    end
end
