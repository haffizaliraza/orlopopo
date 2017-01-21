class ProfileController < ApplicationController
  layout 'table'

  def show
  	 @showoff=Mango.all
  	 @tran=Mango.all
  	 major =[]

  	 transx = '['
  	 len=1
  	 @tran.each do |x|
			  	 	str= '['
			  	 	str+=x.visit
					if len==@tran.length 
			  	 	  str+="]"
			  	 	else
			  	 	  str+="],"
			  	 	end
			  	 	transx+=str
			  	    len=len+1
			  	 end
	transx+=']'
	@trans=transx

	@showoff.each do |tuple|
		collect=[]
		collect=tuple.visit.split(",")
		major.push(collect)
	end
@major_obj=major

algorithm = Apriori::Algorithm.new()
algorithm = Apriori::Algorithm.new(0.15, 0.1)
result = algorithm.analyze(major)
@frequent_item_sets= result.frequent_item_sets
@association_rules= result.association_rules
	

	end
end