def merge(nums1, m, nums2, n)
  loop do
    i = m - 1
    j = n -1
    p nums1
    if nums2[j] && nums1[i] <= nums2[j] 
      nums1[m+n-1] = nums2[j]
      n -= 1
      break if n == 0
    else
      nums1[m+n-1] = nums1[i]
      nums1[i] = 0
      m -= 1
    end
  end
  nums1
end

# nums1 = [1,2,3,0,0,0] m = 3
# nums2 = [2,5,6]  n = 3

# nums1 = [1,2,3,0,5,6] m = 3
# nums2 = [2,5,6]  n = 2

# nums1 = [1,2,3,0,5,6] m = 3
# nums2 = [2,5,6]  n = 1

# nums1 = [1,2,0,3,5,6] m = 2
# nums2 = [2,5,6]  n = 1

# nums1 = [1,2,2,3,5,6] m = 2
# nums2 = [2,5,6]  n = 0