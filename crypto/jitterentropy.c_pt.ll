; ModuleID = '/llk/IR/crypto/jitterentropy.c_pt.bc'
source_filename = "../crypto/jitterentropy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.rand_data = type { i64, i64, i64, i64, i64, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define dso_local i32 @jent_read_entropy(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store ptr null, ptr %8, align 4, !annotation !8
  %11 = load ptr, ptr %6, align 4
  store ptr %11, ptr %8, align 4
  %12 = load ptr, ptr %5, align 4
  %13 = icmp ne ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 -1, ptr %4, align 4
  br label %68

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %56, %15
  %17 = load i32, ptr %7, align 4
  %18 = icmp ugt i32 %17, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %16
  store i32 0, ptr %9, align 4, !annotation !8
  %20 = load ptr, ptr %5, align 4
  call void @jent_gen_entropy(ptr noundef %20)
  %21 = load ptr, ptr %5, align 4
  %22 = call i32 @jent_health_failure(ptr noundef %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %19
  store i32 0, ptr %10, align 4, !annotation !8
  %25 = load ptr, ptr %5, align 4
  %26 = call i32 @jent_rct_failure(ptr noundef %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 -2, ptr %10, align 4
  br label %30

29:                                               ; preds = %24
  store i32 -3, ptr %10, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = call i32 @jent_entropy_init()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, ptr %10, align 4
  store i32 %34, ptr %4, align 4
  br label %68

35:                                               ; preds = %30
  %36 = load ptr, ptr %5, align 4
  call void @jent_apt_reset(ptr noundef %36, i32 noundef 0)
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr inbounds %struct.rand_data, ptr %37, i32 0, i32 15
  %39 = load i8, ptr %38, align 8
  %40 = and i8 %39, -2
  %41 = or i8 %40, 0
  store i8 %41, ptr %38, align 8
  %42 = load ptr, ptr %5, align 4
  %43 = getelementptr inbounds %struct.rand_data, ptr %42, i32 0, i32 11
  store i32 0, ptr %43, align 8
  %44 = load ptr, ptr %5, align 4
  %45 = getelementptr inbounds %struct.rand_data, ptr %44, i32 0, i32 15
  %46 = load i8, ptr %45, align 8
  %47 = and i8 %46, -3
  %48 = or i8 %47, 0
  store i8 %48, ptr %45, align 8
  %49 = load i32, ptr %10, align 4
  store i32 %49, ptr %4, align 4
  br label %68

50:                                               ; preds = %19
  %51 = load i32, ptr %7, align 4
  %52 = icmp ult i32 8, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 8, ptr %9, align 4
  br label %56

54:                                               ; preds = %50
  %55 = load i32, ptr %7, align 4
  store i32 %55, ptr %9, align 4
  br label %56

56:                                               ; preds = %54, %53
  %57 = load ptr, ptr %8, align 4
  %58 = load ptr, ptr %5, align 4
  %59 = getelementptr inbounds %struct.rand_data, ptr %58, i32 0, i32 0
  %60 = load i32, ptr %9, align 4
  call void @jent_memcpy(ptr noundef %57, ptr noundef %59, i32 noundef %60)
  %61 = load i32, ptr %9, align 4
  %62 = load i32, ptr %7, align 4
  %63 = sub i32 %62, %61
  store i32 %63, ptr %7, align 4
  %64 = load i32, ptr %9, align 4
  %65 = load ptr, ptr %8, align 4
  %66 = getelementptr i8, ptr %65, i32 %64
  store ptr %66, ptr %8, align 4
  br label %16

67:                                               ; preds = %16
  store i32 0, ptr %4, align 4
  br label %68

68:                                               ; preds = %67, %35, %33, %14
  %69 = load i32, ptr %4, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal void @jent_gen_entropy(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  store i32 0, ptr %3, align 4, !annotation !8
  store i32 0, ptr %3, align 4
  store i32 0, ptr %4, align 4, !annotation !8
  store i32 0, ptr %4, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = call i32 @jent_measure_jitter(ptr noundef %5)
  br label %7

7:                                                ; preds = %28, %16, %1
  %8 = load ptr, ptr %2, align 4
  %9 = call i32 @jent_health_failure(ptr noundef %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %29

12:                                               ; preds = %7
  %13 = load ptr, ptr %2, align 4
  %14 = call i32 @jent_measure_jitter(ptr noundef %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %7

17:                                               ; preds = %12
  %18 = load i32, ptr %3, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %3, align 4
  %20 = load i32, ptr %4, align 4
  %21 = add i32 64, %20
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds %struct.rand_data, ptr %22, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = mul i32 %21, %24
  %26 = icmp uge i32 %19, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %29

28:                                               ; preds = %17
  br label %7

29:                                               ; preds = %27, %7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal i32 @jent_health_failure(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rand_data, ptr %3, i32 0, i32 15
  %5 = load i8, ptr %4, align 8
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext i8 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal i32 @jent_rct_failure(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rand_data, ptr %4, i32 0, i32 11
  %6 = load i32, ptr %5, align 8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, ptr %2, align 4
  br label %10

9:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %10

10:                                               ; preds = %9, %8
  %11 = load i32, ptr %2, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define dso_local i32 @jent_entropy_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rand_data, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, ptr %2, align 4, !annotation !8
  store i64 0, ptr %3, align 8, !annotation !8
  store i64 0, ptr %3, align 8
  store i64 0, ptr %4, align 8, !annotation !8
  store i64 0, ptr %4, align 8
  store i32 0, ptr %5, align 4, !annotation !8
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4, !annotation !8
  store i32 0, ptr %6, align 4
  store i32 0, ptr %7, align 4, !annotation !8
  store i32 0, ptr %7, align 4
  store i32 0, ptr %8, align 4, !annotation !8
  store i32 0, ptr %8, align 4
  call void @llvm.memset.p0.i32(ptr align 8 %9, i8 0, i32 88, i1 false)
  %15 = getelementptr inbounds %struct.rand_data, ptr %9, i32 0, i32 5
  store i32 1, ptr %15, align 8
  store i32 0, ptr %2, align 4
  br label %16

16:                                               ; preds = %103, %0
  %17 = load i32, ptr %2, align 4
  %18 = icmp sgt i32 1124, %17
  br i1 %18, label %19, label %106

19:                                               ; preds = %16
  store i64 0, ptr %10, align 8, !annotation !8
  store i64 0, ptr %10, align 8
  store i64 0, ptr %11, align 8, !annotation !8
  store i64 0, ptr %11, align 8
  store i64 0, ptr %12, align 8, !annotation !8
  store i64 0, ptr %12, align 8
  store i32 0, ptr %13, align 4, !annotation !8
  store i32 0, ptr %13, align 4
  store i32 0, ptr %14, align 4, !annotation !8
  call void @jent_get_nstime(ptr noundef %10)
  %20 = load i64, ptr %10, align 8
  %21 = getelementptr inbounds %struct.rand_data, ptr %9, i32 0, i32 2
  store i64 %20, ptr %21, align 8
  %22 = load i64, ptr %10, align 8
  call void @jent_lfsr_time(ptr noundef %9, i64 noundef %22, i64 noundef 0, i32 noundef 0)
  call void @jent_get_nstime(ptr noundef %11)
  %23 = load i64, ptr %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i64, ptr %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %19
  store i32 1, ptr %1, align 4
  br label %123

29:                                               ; preds = %25
  %30 = load i64, ptr %10, align 8
  %31 = load i64, ptr %11, align 8
  %32 = call i64 @jent_delta(i64 noundef %30, i64 noundef %31)
  store i64 %32, ptr %12, align 8
  %33 = load i64, ptr %12, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store i32 2, ptr %1, align 4
  br label %123

36:                                               ; preds = %29
  %37 = load i64, ptr %12, align 8
  %38 = call i32 @jent_stuck(ptr noundef %9, i64 noundef %37)
  store i32 %38, ptr %14, align 4
  %39 = load i32, ptr %2, align 4
  %40 = icmp slt i32 %39, 100
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %103

42:                                               ; preds = %36
  %43 = load i32, ptr %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, ptr %8, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %8, align 4
  br label %63

48:                                               ; preds = %42
  %49 = load i32, ptr %5, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %5, align 4
  %51 = load i32, ptr %5, align 4
  %52 = urem i32 %51, 512
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load i64, ptr %12, align 8
  %56 = and i64 %55, 15
  %57 = trunc i64 %56 to i32
  call void @jent_apt_reset(ptr noundef %9, i32 noundef %57)
  %58 = call i32 @jent_health_failure(ptr noundef %9)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 9, ptr %1, align 4
  br label %123

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %48
  br label %63

63:                                               ; preds = %62, %45
  %64 = call i32 @jent_rct_failure(ptr noundef %9)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 10, ptr %1, align 4
  br label %123

67:                                               ; preds = %63
  %68 = load i64, ptr %11, align 8
  %69 = load i64, ptr %10, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr %6, align 4
  %73 = add i32 %72, 1
  store i32 %73, ptr %6, align 4
  br label %74

74:                                               ; preds = %71, %67
  %75 = load i64, ptr %11, align 8
  %76 = load i64, ptr %10, align 8
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, ptr %13, align 4
  %79 = load i32, ptr %13, align 4
  %80 = urem i32 %79, 100
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %74
  %83 = load i32, ptr %7, align 4
  %84 = add i32 %83, 1
  store i32 %84, ptr %7, align 4
  br label %85

85:                                               ; preds = %82, %74
  %86 = load i64, ptr %12, align 8
  %87 = load i64, ptr %4, align 8
  %88 = icmp ugt i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i64, ptr %12, align 8
  %91 = load i64, ptr %4, align 8
  %92 = sub i64 %90, %91
  %93 = load i64, ptr %3, align 8
  %94 = add i64 %93, %92
  store i64 %94, ptr %3, align 8
  br label %101

95:                                               ; preds = %85
  %96 = load i64, ptr %4, align 8
  %97 = load i64, ptr %12, align 8
  %98 = sub i64 %96, %97
  %99 = load i64, ptr %3, align 8
  %100 = add i64 %99, %98
  store i64 %100, ptr %3, align 8
  br label %101

101:                                              ; preds = %95, %89
  %102 = load i64, ptr %12, align 8
  store i64 %102, ptr %4, align 8
  br label %103

103:                                              ; preds = %101, %41
  %104 = load i32, ptr %2, align 4
  %105 = add i32 %104, 1
  store i32 %105, ptr %2, align 4
  br label %16

106:                                              ; preds = %16
  %107 = load i32, ptr %6, align 4
  %108 = icmp sgt i32 %107, 3
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 3, ptr %1, align 4
  br label %123

110:                                              ; preds = %106
  %111 = load i64, ptr %3, align 8
  %112 = icmp ule i64 %111, 1
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 5, ptr %1, align 4
  br label %123

114:                                              ; preds = %110
  %115 = load i32, ptr %7, align 4
  %116 = icmp slt i32 918, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 2, ptr %1, align 4
  br label %123

118:                                              ; preds = %114
  %119 = load i32, ptr %8, align 4
  %120 = icmp slt i32 918, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 8, ptr %1, align 4
  br label %123

122:                                              ; preds = %118
  store i32 0, ptr %1, align 4
  br label %123

123:                                              ; preds = %122, %121, %117, %113, %109, %66, %60, %35, %28
  %124 = load i32, ptr %1, align 4
  ret i32 %124
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal void @jent_apt_reset(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = getelementptr inbounds %struct.rand_data, ptr %5, i32 0, i32 13
  store i32 0, ptr %6, align 8
  %7 = load i32, ptr %4, align 4
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.rand_data, ptr %8, i32 0, i32 14
  store i32 %7, ptr %9, align 4
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.rand_data, ptr %10, i32 0, i32 12
  store i32 0, ptr %11, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jent_memcpy(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define dso_local ptr @jent_entropy_collector_alloc(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store ptr null, ptr %6, align 4, !annotation !8
  %7 = call ptr @jent_zalloc(i32 noundef 88)
  store ptr %7, ptr %6, align 4
  %8 = load ptr, ptr %6, align 4
  %9 = icmp ne ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store ptr null, ptr %3, align 4
  br label %42

11:                                               ; preds = %2
  %12 = load i32, ptr %5, align 4
  %13 = and i32 %12, 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %11
  %16 = call ptr @jent_zalloc(i32 noundef 2048)
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.rand_data, ptr %17, i32 0, i32 6
  store ptr %16, ptr %18, align 4
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr inbounds %struct.rand_data, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp ne ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  %24 = load ptr, ptr %6, align 4
  call void @jent_zfree(ptr noundef %24)
  store ptr null, ptr %3, align 4
  br label %42

25:                                               ; preds = %15
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr inbounds %struct.rand_data, ptr %26, i32 0, i32 9
  store i32 32, ptr %27, align 8
  %28 = load ptr, ptr %6, align 4
  %29 = getelementptr inbounds %struct.rand_data, ptr %28, i32 0, i32 8
  store i32 64, ptr %29, align 4
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.rand_data, ptr %30, i32 0, i32 10
  store i32 128, ptr %31, align 4
  br label %32

32:                                               ; preds = %25, %11
  %33 = load i32, ptr %4, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, ptr %4, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, ptr %4, align 4
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr inbounds %struct.rand_data, ptr %38, i32 0, i32 5
  store i32 %37, ptr %39, align 8
  %40 = load ptr, ptr %6, align 4
  call void @jent_gen_entropy(ptr noundef %40)
  %41 = load ptr, ptr %6, align 4
  store ptr %41, ptr %3, align 4
  br label %42

42:                                               ; preds = %36, %23, %10
  %43 = load ptr, ptr %3, align 4
  ret ptr %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jent_zalloc(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jent_zfree(ptr noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define dso_local void @jent_entropy_collector_free(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rand_data, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  call void @jent_zfree(ptr noundef %5)
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.rand_data, ptr %6, i32 0, i32 6
  store ptr null, ptr %7, align 4
  %8 = load ptr, ptr %2, align 4
  call void @jent_zfree(ptr noundef %8)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jent_get_nstime(ptr noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal void @jent_lfsr_time(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store ptr %0, ptr %5, align 4
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i32 %3, ptr %8, align 4
  store i32 0, ptr %9, align 4, !annotation !8
  store i64 0, ptr %10, align 8, !annotation !8
  store i64 0, ptr %10, align 8
  store i64 0, ptr %11, align 8, !annotation !8
  store i64 0, ptr %11, align 8
  store i64 0, ptr %12, align 8, !annotation !8
  %14 = load ptr, ptr %5, align 4
  %15 = call i64 @jent_loop_shuffle(ptr noundef %14, i32 noundef 4, i32 noundef 0)
  store i64 %15, ptr %12, align 8
  %16 = load i64, ptr %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, ptr %7, align 8
  store i64 %19, ptr %12, align 8
  br label %20

20:                                               ; preds = %18, %4
  store i64 0, ptr %10, align 8
  br label %21

21:                                               ; preds = %79, %20
  %22 = load i64, ptr %10, align 8
  %23 = load i64, ptr %12, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %82

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr inbounds %struct.rand_data, ptr %26, i32 0, i32 0
  %28 = load i64, ptr %27, align 8
  store i64 %28, ptr %11, align 8
  store i32 1, ptr %9, align 4
  br label %29

29:                                               ; preds = %75, %25
  %30 = load i32, ptr %9, align 4
  %31 = icmp uge i32 64, %30
  br i1 %31, label %32, label %78

32:                                               ; preds = %29
  store i64 0, ptr %13, align 8, !annotation !8
  %33 = load i64, ptr %6, align 8
  %34 = load i32, ptr %9, align 4
  %35 = sub i32 64, %34
  %36 = zext i32 %35 to i64
  %37 = shl i64 %33, %36
  store i64 %37, ptr %13, align 8
  %38 = load i64, ptr %13, align 8
  %39 = lshr i64 %38, 63
  store i64 %39, ptr %13, align 8
  %40 = load i64, ptr %11, align 8
  %41 = lshr i64 %40, 63
  %42 = and i64 %41, 1
  %43 = load i64, ptr %13, align 8
  %44 = xor i64 %43, %42
  store i64 %44, ptr %13, align 8
  %45 = load i64, ptr %11, align 8
  %46 = lshr i64 %45, 60
  %47 = and i64 %46, 1
  %48 = load i64, ptr %13, align 8
  %49 = xor i64 %48, %47
  store i64 %49, ptr %13, align 8
  %50 = load i64, ptr %11, align 8
  %51 = lshr i64 %50, 55
  %52 = and i64 %51, 1
  %53 = load i64, ptr %13, align 8
  %54 = xor i64 %53, %52
  store i64 %54, ptr %13, align 8
  %55 = load i64, ptr %11, align 8
  %56 = lshr i64 %55, 30
  %57 = and i64 %56, 1
  %58 = load i64, ptr %13, align 8
  %59 = xor i64 %58, %57
  store i64 %59, ptr %13, align 8
  %60 = load i64, ptr %11, align 8
  %61 = lshr i64 %60, 27
  %62 = and i64 %61, 1
  %63 = load i64, ptr %13, align 8
  %64 = xor i64 %63, %62
  store i64 %64, ptr %13, align 8
  %65 = load i64, ptr %11, align 8
  %66 = lshr i64 %65, 22
  %67 = and i64 %66, 1
  %68 = load i64, ptr %13, align 8
  %69 = xor i64 %68, %67
  store i64 %69, ptr %13, align 8
  %70 = load i64, ptr %11, align 8
  %71 = shl i64 %70, 1
  store i64 %71, ptr %11, align 8
  %72 = load i64, ptr %13, align 8
  %73 = load i64, ptr %11, align 8
  %74 = xor i64 %73, %72
  store i64 %74, ptr %11, align 8
  br label %75

75:                                               ; preds = %32
  %76 = load i32, ptr %9, align 4
  %77 = add i32 %76, 1
  store i32 %77, ptr %9, align 4
  br label %29

78:                                               ; preds = %29
  br label %79

79:                                               ; preds = %78
  %80 = load i64, ptr %10, align 8
  %81 = add i64 %80, 1
  store i64 %81, ptr %10, align 8
  br label %21

82:                                               ; preds = %21
  %83 = load i32, ptr %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load i64, ptr %11, align 8
  %87 = load ptr, ptr %5, align 4
  %88 = getelementptr inbounds %struct.rand_data, ptr %87, i32 0, i32 0
  store i64 %86, ptr %88, align 8
  br label %89

89:                                               ; preds = %85, %82
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal i64 @jent_delta(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i64, ptr %4, align 8
  %10 = load i64, ptr %3, align 8
  %11 = sub i64 %9, %10
  br label %18

12:                                               ; preds = %2
  %13 = load i64, ptr %3, align 8
  %14 = sub i64 -1, %13
  %15 = add i64 %14, 1
  %16 = load i64, ptr %4, align 8
  %17 = add i64 %15, %16
  br label %18

18:                                               ; preds = %12, %8
  %19 = phi i64 [ %11, %8 ], [ %17, %12 ]
  ret i64 %19
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal i32 @jent_stuck(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 4
  store i64 %1, ptr %5, align 8
  store i64 0, ptr %6, align 8, !annotation !8
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.rand_data, ptr %8, i32 0, i32 3
  %10 = load i64, ptr %9, align 8
  %11 = load i64, ptr %5, align 8
  %12 = call i64 @jent_delta(i64 noundef %10, i64 noundef %11)
  store i64 %12, ptr %6, align 8
  store i64 0, ptr %7, align 8, !annotation !8
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.rand_data, ptr %13, i32 0, i32 4
  %15 = load i64, ptr %14, align 8
  %16 = load i64, ptr %6, align 8
  %17 = call i64 @jent_delta(i64 noundef %15, i64 noundef %16)
  store i64 %17, ptr %7, align 8
  %18 = load i64, ptr %5, align 8
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.rand_data, ptr %19, i32 0, i32 3
  store i64 %18, ptr %20, align 8
  %21 = load i64, ptr %6, align 8
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.rand_data, ptr %22, i32 0, i32 4
  store i64 %21, ptr %23, align 8
  %24 = load ptr, ptr %4, align 4
  %25 = load i64, ptr %5, align 8
  %26 = trunc i64 %25 to i32
  call void @jent_apt_insert(ptr noundef %24, i32 noundef %26)
  %27 = load i64, ptr %5, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i64, ptr %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, ptr %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32, %29, %2
  %36 = load ptr, ptr %4, align 4
  call void @jent_rct_insert(ptr noundef %36, i32 noundef 1)
  store i32 1, ptr %3, align 4
  br label %39

37:                                               ; preds = %32
  %38 = load ptr, ptr %4, align 4
  call void @jent_rct_insert(ptr noundef %38, i32 noundef 0)
  store i32 0, ptr %3, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, ptr %3, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal i32 @jent_measure_jitter(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  store i64 0, ptr %3, align 8, !annotation !8
  store i64 0, ptr %3, align 8
  store i64 0, ptr %4, align 8, !annotation !8
  store i64 0, ptr %4, align 8
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = load ptr, ptr %2, align 4
  call void @jent_memaccess(ptr noundef %6, i64 noundef 0)
  call void @jent_get_nstime(ptr noundef %3)
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.rand_data, ptr %7, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = load i64, ptr %3, align 8
  %11 = call i64 @jent_delta(i64 noundef %9, i64 noundef %10)
  store i64 %11, ptr %4, align 8
  %12 = load i64, ptr %3, align 8
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.rand_data, ptr %13, i32 0, i32 2
  store i64 %12, ptr %14, align 8
  %15 = load ptr, ptr %2, align 4
  %16 = load i64, ptr %4, align 8
  %17 = call i32 @jent_stuck(ptr noundef %15, i64 noundef %16)
  store i32 %17, ptr %5, align 4
  %18 = load ptr, ptr %2, align 4
  %19 = load i64, ptr %4, align 8
  %20 = load i32, ptr %5, align 4
  call void @jent_lfsr_time(ptr noundef %18, i64 noundef %19, i64 noundef 0, i32 noundef %20)
  %21 = load i32, ptr %5, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal void @jent_memaccess(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store i64 %1, ptr %4, align 8
  store i32 0, ptr %5, align 4, !annotation !8
  store i32 0, ptr %5, align 4
  store i64 0, ptr %6, align 8, !annotation !8
  store i64 0, ptr %6, align 8
  store i64 0, ptr %7, align 8, !annotation !8
  %9 = load ptr, ptr %3, align 4
  %10 = call i64 @jent_loop_shuffle(ptr noundef %9, i32 noundef 7, i32 noundef 0)
  store i64 %10, ptr %7, align 8
  %11 = load ptr, ptr %3, align 4
  %12 = icmp eq ptr null, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.rand_data, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr null, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %2
  br label %76

19:                                               ; preds = %13
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.rand_data, ptr %20, i32 0, i32 9
  %22 = load i32, ptr %21, align 8
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr inbounds %struct.rand_data, ptr %23, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = mul i32 %22, %25
  store i32 %26, ptr %5, align 4
  %27 = load i64, ptr %4, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i64, ptr %4, align 8
  store i64 %30, ptr %7, align 8
  br label %31

31:                                               ; preds = %29, %19
  store i64 0, ptr %6, align 8
  br label %32

32:                                               ; preds = %73, %31
  %33 = load i64, ptr %6, align 8
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr inbounds %struct.rand_data, ptr %34, i32 0, i32 10
  %36 = load i32, ptr %35, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, ptr %7, align 8
  %39 = add i64 %37, %38
  %40 = icmp ult i64 %33, %39
  br i1 %40, label %41, label %76

41:                                               ; preds = %32
  store ptr null, ptr %8, align 4, !annotation !8
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr inbounds %struct.rand_data, ptr %42, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr inbounds %struct.rand_data, ptr %45, i32 0, i32 7
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr i8, ptr %44, i32 %47
  store ptr %48, ptr %8, align 4
  %49 = load ptr, ptr %8, align 4
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = add i32 %51, 1
  %53 = and i32 %52, 255
  %54 = trunc i32 %53 to i8
  %55 = load ptr, ptr %8, align 4
  store i8 %54, ptr %55, align 1
  %56 = load ptr, ptr %3, align 4
  %57 = getelementptr inbounds %struct.rand_data, ptr %56, i32 0, i32 7
  %58 = load i32, ptr %57, align 8
  %59 = load ptr, ptr %3, align 4
  %60 = getelementptr inbounds %struct.rand_data, ptr %59, i32 0, i32 9
  %61 = load i32, ptr %60, align 8
  %62 = add i32 %58, %61
  %63 = sub i32 %62, 1
  %64 = load ptr, ptr %3, align 4
  %65 = getelementptr inbounds %struct.rand_data, ptr %64, i32 0, i32 7
  store i32 %63, ptr %65, align 8
  %66 = load ptr, ptr %3, align 4
  %67 = getelementptr inbounds %struct.rand_data, ptr %66, i32 0, i32 7
  %68 = load i32, ptr %67, align 8
  %69 = load i32, ptr %5, align 4
  %70 = urem i32 %68, %69
  %71 = load ptr, ptr %3, align 4
  %72 = getelementptr inbounds %struct.rand_data, ptr %71, i32 0, i32 7
  store i32 %70, ptr %72, align 8
  br label %73

73:                                               ; preds = %41
  %74 = load i64, ptr %6, align 8
  %75 = add i64 %74, 1
  store i64 %75, ptr %6, align 8
  br label %32

76:                                               ; preds = %32, %18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal i64 @jent_loop_shuffle(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i64 0, ptr %7, align 8, !annotation !8
  store i64 0, ptr %7, align 8
  store i64 0, ptr %8, align 8, !annotation !8
  store i64 0, ptr %8, align 8
  store i32 0, ptr %9, align 4, !annotation !8
  store i32 0, ptr %9, align 4
  store i32 0, ptr %10, align 4, !annotation !8
  %11 = load i32, ptr %5, align 4
  %12 = shl i32 1, %11
  %13 = sub i32 %12, 1
  store i32 %13, ptr %10, align 4
  call void @jent_get_nstime(ptr noundef %7)
  %14 = load ptr, ptr %4, align 4
  %15 = icmp ne ptr %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.rand_data, ptr %17, i32 0, i32 0
  %19 = load i64, ptr %18, align 8
  %20 = load i64, ptr %7, align 8
  %21 = xor i64 %20, %19
  store i64 %21, ptr %7, align 8
  br label %22

22:                                               ; preds = %16, %3
  store i32 0, ptr %9, align 4
  br label %23

23:                                               ; preds = %42, %22
  %24 = load i32, ptr %5, align 4
  %25 = add i32 64, %24
  %26 = sub i32 %25, 1
  %27 = load i32, ptr %5, align 4
  %28 = udiv i32 %26, %27
  %29 = load i32, ptr %9, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %23
  %32 = load i64, ptr %7, align 8
  %33 = load i32, ptr %10, align 4
  %34 = zext i32 %33 to i64
  %35 = and i64 %32, %34
  %36 = load i64, ptr %8, align 8
  %37 = xor i64 %36, %35
  store i64 %37, ptr %8, align 8
  %38 = load i64, ptr %7, align 8
  %39 = load i32, ptr %5, align 4
  %40 = zext i32 %39 to i64
  %41 = lshr i64 %38, %40
  store i64 %41, ptr %7, align 8
  br label %42

42:                                               ; preds = %31
  %43 = load i32, ptr %9, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %9, align 4
  br label %23

45:                                               ; preds = %23
  %46 = load i64, ptr %8, align 8
  %47 = load i32, ptr %6, align 4
  %48 = shl i32 1, %47
  %49 = sext i32 %48 to i64
  %50 = add i64 %46, %49
  ret i64 %50
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal void @jent_apt_insert(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = getelementptr inbounds %struct.rand_data, ptr %5, i32 0, i32 15
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 1
  %9 = zext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.rand_data, ptr %13, i32 0, i32 14
  store i32 %12, ptr %14, align 4
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.rand_data, ptr %15, i32 0, i32 15
  %17 = load i8, ptr %16, align 8
  %18 = and i8 %17, -2
  %19 = or i8 %18, 1
  store i8 %19, ptr %16, align 8
  br label %54

20:                                               ; preds = %2
  %21 = load i32, ptr %4, align 4
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr inbounds %struct.rand_data, ptr %22, i32 0, i32 14
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.rand_data, ptr %27, i32 0, i32 13
  %29 = load i32, ptr %28, align 8
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 8
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr inbounds %struct.rand_data, ptr %31, i32 0, i32 13
  %33 = load i32, ptr %32, align 8
  %34 = icmp uge i32 %33, 325
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.rand_data, ptr %36, i32 0, i32 15
  %38 = load i8, ptr %37, align 8
  %39 = and i8 %38, -3
  %40 = or i8 %39, 2
  store i8 %40, ptr %37, align 8
  br label %41

41:                                               ; preds = %35, %26
  br label %42

42:                                               ; preds = %41, %20
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr inbounds %struct.rand_data, ptr %43, i32 0, i32 12
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 4
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr inbounds %struct.rand_data, ptr %47, i32 0, i32 12
  %49 = load i32, ptr %48, align 4
  %50 = icmp uge i32 %49, 512
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load ptr, ptr %3, align 4
  %53 = load i32, ptr %4, align 4
  call void @jent_apt_reset(ptr noundef %52, i32 noundef %53)
  br label %54

54:                                               ; preds = %51, %42, %11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync)
define internal void @jent_rct_insert(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = getelementptr inbounds %struct.rand_data, ptr %5, i32 0, i32 11
  %7 = load i32, ptr %6, align 8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %38

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.rand_data, ptr %14, i32 0, i32 11
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 8
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.rand_data, ptr %18, i32 0, i32 11
  %20 = load i32, ptr %19, align 8
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.rand_data, ptr %21, i32 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = mul i32 31, %23
  %25 = icmp uge i32 %20, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %13
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.rand_data, ptr %27, i32 0, i32 11
  store i32 -1, ptr %28, align 8
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr inbounds %struct.rand_data, ptr %29, i32 0, i32 15
  %31 = load i8, ptr %30, align 8
  %32 = and i8 %31, -3
  %33 = or i8 %32, 2
  store i8 %33, ptr %30, align 8
  br label %34

34:                                               ; preds = %26, %13
  br label %38

35:                                               ; preds = %10
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.rand_data, ptr %36, i32 0, i32 11
  store i32 0, ptr %37, align 8
  br label %38

38:                                               ; preds = %35, %34, %9
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid optnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{!"auto-init"}
