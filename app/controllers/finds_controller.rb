class FindsController < ApplicationController
    def new
        @find = Find.new
    end

    def create
        @find = Find.new(params[:find])
        @find.request = request
        if @find.deliver
           flash.now[:error] = nil
        else
           flash.now[:error] = 'Cannot send application.'
           render :new
        end
    end
end
