

function containDuplicate(nums){
    const seen =  new Set()
    for (const num of nums){
        if(seen.has(num)){
            return true
        }
        seen.add(num)

    }
    return false
}
console.log(containDuplicate([1, 2, 3])); // false
console.log(containDuplicate([1, 2, 3, 1])); // true