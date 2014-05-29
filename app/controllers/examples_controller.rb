class ExamplesController < ApplicationController
  before_action :load_thought

    def create
      @example = @thought.examples.new(example_params)
      if @example.save
        redirect_to @thought, notice: 'Thanks for your example'
      else
        redirect_to @thought, alert: 'Unable to add Example'
      end
    end
  
    def destroy
      @example = @thought.examples.find(params[:id])
      @example.destroy
      redirect_to @thought, notice: 'Example Deleted'
    end

    private
    def load_thought
      @thought = Thought.find(params[:thought_id])
    end
  
    def example_params
      params.require(:example).permit(:body)
    end
end
