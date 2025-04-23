echo "##active_line2##"
document.querySelector('#app').innerHTML = `
echo "##active_line3##"
<textarea id="input" placeholder="粘贴需要降重的文本..."></textarea>
echo "##active_line4##"
`;
echo "##active_line5##"
document.querySelector('#app').innerHTML += ;
document.querySelector('#app').innerHTML += ;
echo "##active_line2##"
document.querySelector('#app').innerHTML += `
echo "##active_line3##"
<button id="submit">提交</button>
echo "##active_line4##"
`;
echo "##active_line5##"
document.querySelector('#app').innerHTML += ;
document.querySelector('#app').innerHTML += `<button id="submit">提交</button>`;
`
document.querySelector('#submit').addEventListener('click', () => {
const inputText = document.querySelector('#input').value;
console.log('用户输入：', inputText);
});
