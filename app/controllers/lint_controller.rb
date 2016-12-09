class LintController < ApplicationController
  def exam
    render :exam
  end

  def validate
    lint.mml=lint_params[:mml]
    render :exam
  end

  def lint
    @lint ||= Lint.new(lint_params)
  end

  private

  def lint_params
    params.permit(:mml)
  end
 end
