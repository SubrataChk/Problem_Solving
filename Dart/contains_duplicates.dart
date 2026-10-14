
class ContainsDuplicates {
  bool ContainsDupli(List<int> nums){
    final Set<int> seen = <int>{};

    for(final int n in nums){
      if(seen.contains(n)){
        return true;
      }
      seen.add(n);

    }

    return false;
  }
}



main(){
  final data = ContainsDuplicates();

  print(data.ContainsDupli( [1, 2, 3, 1] ));
}