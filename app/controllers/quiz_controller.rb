class QuizController < ApplicationController
def index
end
def start
$g=1
$score=0
redirect_to :action => "showq"

end
def showq
if $g>3
redirect_to :action => "end"
return 
end
@show=Question.find($g)

end
def answer
@ans =Question.find($g)
@choiceid = params[:choice]
$g+=1
if @choiceid == @ans.cans
$score+=1
end


end
def end
end
end
