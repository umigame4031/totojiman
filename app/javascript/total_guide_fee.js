window.addEventListener('load', () => {
  const hourInput = document.getElementById("guide-hour");
  hourInput.addEventListener('input', () => {
    const inputValue = hourInput.value;
    const Fee = document.getElementById("guide-fee");
    const feeValue = Fee.value;
    const totalFee = document.getElementById("total-guide-fee");
    totalFee.innerHTML = Fee * inputValue;
  });
});
