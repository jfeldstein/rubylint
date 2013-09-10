class LintingController < ApplicationController
  def index
    @unlinted = params[:hash]
    @linted = HashLinter.lint(params[:hash]) if params[:hash]
    @linted ||= ''
    puts "LINTED", @linted
  end
end
