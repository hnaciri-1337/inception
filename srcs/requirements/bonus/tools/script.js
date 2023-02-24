const	h = document.querySelector("h5");
const	arr = ['HNACIRI-'];
const	s = 'Made by ';
let		i = 0;
let		j = 0;
function	update_text()
{
	if (j == 0)
		h.innerHTML = s;
	h.innerHTML = h.innerHTML + arr[i][j];
	j++;
	if (j == arr[i].length)
	{
		i++;
		j = 0;
		if (i == arr.length)
			i = 0;
	}
	if (j == 0)
		setTimeout (()=>{update_text()}, 1000);
	else
		setTimeout (()=>{update_text()}, 500);
}

update_text();
