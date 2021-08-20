List<int> incrementLastByte(List<int> data) {
  return List.of(data)..[data.length - 1] = data.last + 1;
}
