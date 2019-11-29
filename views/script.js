function cifrar(msg, rot){

  const cipher = { msg: msg, rot: rot };
  const options = {
    method: 'POST',
    body: JSON.stringify(cipher),
    headers: {
      'Content-Type': 'application/json'
    }
  }

  fetch('/', options).then(res => res.json()).then(res => console.log(res));
}
