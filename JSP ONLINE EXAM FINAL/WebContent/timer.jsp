<html>
<div style="font-weight: bold" id="quiz-time-left"></div>
<script type="text/javascript">
var total_seconds = 60 * 1;
var c_minutes = parseInt (total_seconds / 60);
var c_seconds = parseInt (total_seconds % 60);
function CheckTime ()
{
	document.getElementById("quiz-time-left").innerHTML
	='Time Left: ' + c_minutes + ' Minutes : ' + c_seconds + ' Seconds';
	if (total_seconds <= 0){
		setTimeout ('document.quiz.submit()',1);
	}
	else
	{
		total_seconds = total_seconds - 1;
		c_minutes = parseInt (total_seconds / 60);
		c_seconds = parseInt (total_seconds % 60);
		setTimeout ("CheckTime ()", 1000);
		
		}
}
setTimeout ("CheckTime ()", 1000);
</script>
<form method="post" name="quiz" action="answer.jsp"></form>

</html>
