class Signed::BaseController < ApplicationController
	before_filter :authenticate_user!
 end