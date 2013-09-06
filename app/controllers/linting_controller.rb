class LintingController < ApplicationController
  def index
    @linted = lint(params[:lintable]) || ''
    puts "LINTED", @linted
  end

  private
    def lint(lintable)
      lintable.gsub(/[{}:]/,'').split(', ').map{|h| h1,h2 = h.split('=>'); {h1 => h2}}.reduce(:merge)
    end
end
