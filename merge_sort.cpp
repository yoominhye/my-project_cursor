#include <iostream>
#include <vector>
using namespace std;
// (1) merge
void merge (vector<int>& arr, int left, int mid, int right) {
	vector<int> temp;
	int i = left;
	int j = mid + 1;
	while ( i <= mid && j <= right) {
		if (arr[i] <= arr[j]) {
			temp.push_back(arr[i++]);}
		else {
			temp.push_back(arr[j++]);}
	}
	while (i <= mid) temp.push_back(arr[i++]);
	while (j <= right) temp.push_back(arr[j++]);
	for (int k = 0; k < (int)temp.size(); k++) {
		arr[left + k] =temp[k];}
}
void merge_sort(vector<int>& arr, int left, int right) {
	if(left >= right) return;
	int mid = (left + right) /2;
	merge_sort(arr, left, mid);
	merge_sort(arr, mid + 1, right);
	merge(arr, left, mid, right);
}
void print_array(const vector<int>& arr, const string& label) {
	cout << label << ": [ ";
	for (int x : arr) cout << x << " ";
	cout << "]" <<endl;
}
int main () {
	ios::sync_with_stdio(0);
	cin.tie(0);

	vector<int> arr = {38, 27, 43, 3, 9, 82, 10};
	print_array(arr, "before: ");
	merge_sort(arr, 0, (int)arr.size() - 1);
	print_array(arr, "after: ");
	return 0;
}
