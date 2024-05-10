document.getElementById('openPopup').addEventListener('click', function() {
    document.getElementById('popup').style.display = 'block';
  });
 
  document.getElementById('closePopup').addEventListener('click', function() {
    document.getElementById('popup').style.display = 'none';
  });


  const darkModeToggle = document.getElementById('dark-mode-toggle');
  const body = document.body;
  
  // Quando o botão do modo escuro é clicado
  darkModeToggle.addEventListener('click', () => {
    // Alterne o modo escuro
    body.classList.toggle('dark-mode');
  
    // Salve o estado no armazenamento local
    localStorage.setItem('darkMode', body.classList.contains('dark-mode'));
  });
  
  // Quando a página é carregada
  window.addEventListener('DOMContentLoaded', () => {
    // Recupere o estado do armazenamento local
    const darkMode = localStorage.getItem('darkMode');
  
    // Se o modo escuro estava ativo, aplique-o novamente
    if (darkMode === 'true') {
      body.classList.add('dark-mode');
    }
  });



