class TestscoresController < ApplicationController

	def index
		@ts = Testscore.all
	end
end
