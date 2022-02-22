/**
 * 
 */
 
let isFocusedInput = false;
	
function focusInput() {
    const focus = document.activeElement.id;
		
    if( focus === 'search-input' && isFocusedInput == false) isFocusedInput = true;
    else isFocusedInput = false;

    notifyInput();                
}

function notifyInput() {
    if(isFocusedInput == false) document.getElementById("search-history").style.display = 'none';
    else document.getElementById("search-history").style.display = 'block';
}
document.addEventListener('mouseup', focusInput);

function clearSearchInput(){
	let input = document.getElementById("search-input");
	input.value = '';
}

function search()
{
	console.log('검색!');
}

function applyCompany()
{
	alert('지원');
}

function addWishlist()
{
	alert('관심 기업 등록');
}

