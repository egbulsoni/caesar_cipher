function cifrar(){

  const cipher = { msg: document.getElementById('msg').value, 
  rot: document.getElementById('rot').value };
  const options = {
    method: 'POST',
    body: JSON.stringify(cipher),
    headers: {
      'Content-Type': 'application/json'
    }
  }

  fetch('/', options).then(res => res)
  .then(res => 
    res.text().then(text => 
      document.getElementById('encrypted').innerHTML = text))


}