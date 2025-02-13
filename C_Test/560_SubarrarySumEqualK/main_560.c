#include "stdint.h"
#include "stdio.h"
#include "string.h"
#include "stdbool.h"
#include "stdlib.h"
//Given an array of integers nums and an integer k,
//return the total number of continuous subarrays whose sum equals to k.

//Input: nums = [1,1,1], k = 2
//Output: 2

//Input: nums = [1,2,3], k = 3
//Output: 2

//Constraints:
//1. 1 <= nums.length <= 2 * 10^4
//2. -1000 <= nums[i] <= 1000
//3. -10^7 <= k <= 10^7

int subarraySum(int* nums, int numsSize, int k);

int main(void)
{
    int nums[20000];
    int count;
    FILE *fptr;

    if((fptr = fopen("./input2.txt", "r")) != NULL)
    {
        for(int index = 0; index < 20000; index++)
        {
            fscanf(fptr, "%d,", &nums[index]);
        }

        fclose(fptr);
    }

    count = subarraySum(&nums[0], 20000, -682);

    printf("count = %d\n", count);

}

#define CAPACITY 20000

typedef struct hashEntry
{
    int sum;
    int count;
    int init;
}entry_T;

int maxOffset = 0;

//perform hashTbl[sum]++
void addOne(entry_T* p_hashTbl, int sum)
{
    int index, idx;
    int cnt = 0;

    index = (sum % CAPACITY + CAPACITY) % CAPACITY;

    //check init
    if(p_hashTbl[index].init == false)
    {
        p_hashTbl[index].sum = sum;
        p_hashTbl[index].count++;
        p_hashTbl[index].init = true;
    }
    else//this entry has been used before
    {
        //check collision
        if(p_hashTbl[index].sum == sum)
        {
            p_hashTbl[index].count++;
        }
        else//collision! Find the next availabe entry
        {
            idx = index;
            cnt = 0;
            while(1)
            {
                cnt++;
                if(cnt > maxOffset)
                {
                    maxOffset = cnt;
                }

                idx = (idx + 1) % CAPACITY;
                if((p_hashTbl[idx].init == true) && (p_hashTbl[idx].sum == sum))
                {
                    p_hashTbl[idx].count++;
                    break;
                }
                else if(p_hashTbl[idx].init == false)
                {
                    p_hashTbl[idx].sum = sum;
                    p_hashTbl[idx].count++;
                    p_hashTbl[idx].init = true;
                    break;
                }
            }
        }
    }
}

int getCnt(entry_T* p_hashTbl, int target)
{
    int index;
    int i;

    index = (target % CAPACITY + CAPACITY) % CAPACITY;

    if((p_hashTbl[index].init == true) && (p_hashTbl[index].sum == target))
    {
        return p_hashTbl[index].count;
    }
    else//collision! Find the exact entry
    {
        int idx = index;
        if(p_hashTbl[index].init == true)//only checks when p_hashTbl[index].sum != target. This can increase run-tim efficiency a lot
        {
            for(i = 0; i < maxOffset; i++)
            {
                idx = (idx + 1) % CAPACITY;
                if((p_hashTbl[idx].init == true) && (p_hashTbl[idx].sum == target))
                {
                    return p_hashTbl[idx].count;
                }
            }
        }
    }

    return 0;
}

int subarraySum(int* nums, int numsSize, int k)
{
    int i;
    //i = 0, sum[1] = sum[0] + nums[0]
    //i = 1, sum[2] = sum[1] + nums[1] = 0 + nums[0] + nums[1]
    //i = 2, sum[3] = sum[2] + nums[2] = 0 + nums[0] + nums[1] + nums[2]
    //...
    //i = numsSize - 1, sum[numsSize] = sum[numsSize - 1] + nums[numsSize - 1] = 0 + nums[0] + ... nums[numsSize - 1]

    //====================================
    int totalCnt = 0;
    int sum = 0;
    entry_T *p_hashTbl = calloc(CAPACITY, sizeof(entry_T));

    for(i = 0; i < numsSize; i++)
    {
        addOne(p_hashTbl, sum);
        sum += nums[i];

        int target = sum - k;
        totalCnt += getCnt(p_hashTbl, target);
    }

    free(p_hashTbl);

    return totalCnt;
}


