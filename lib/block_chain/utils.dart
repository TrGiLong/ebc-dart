List<int> incrementLastByte(List<int> data) {
  if (data.isEmpty) return [1];
  return List.of(data)..[data.length - 1] = data.last + 1;
}
