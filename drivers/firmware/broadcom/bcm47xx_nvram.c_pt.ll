; ModuleID = '/llk/IR/drivers/firmware/broadcom/bcm47xx_nvram.c_pt.bc'
source_filename = "../drivers/firmware/broadcom/bcm47xx_nvram.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcm47xx_nvram_getenv:\09\09\09\09\09"
module asm "\09.asciz \09\22bcm47xx_nvram_getenv\22\09\09\09\09\09"
module asm "__kstrtabns_bcm47xx_nvram_getenv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcm47xx_nvram_gpio_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22bcm47xx_nvram_gpio_pin\22\09\09\09\09\09"
module asm "__kstrtabns_bcm47xx_nvram_gpio_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcm47xx_nvram_get_contents:\09\09\09\09\09"
module asm "\09.asciz \09\22bcm47xx_nvram_get_contents\22\09\09\09\09\09"
module asm "__kstrtabns_bcm47xx_nvram_get_contents:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nvram_header = type { i32, i32, i32, i32, i32 }

@nvram_len = internal global i32 0, align 4
@nvram_buf = internal global [65536 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__kstrtab_bcm47xx_nvram_getenv = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcm47xx_nvram_getenv = external dso_local constant [0 x i8], align 1
@__ksymtab_bcm47xx_nvram_getenv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcm47xx_nvram_getenv to i32), ptr @__kstrtab_bcm47xx_nvram_getenv, ptr @__kstrtabns_bcm47xx_nvram_getenv }, section "___ksymtab+bcm47xx_nvram_getenv", align 4
@__const.bcm47xx_nvram_gpio_pin.nvram_var = private unnamed_addr constant [7 x i8] c"gpioXX\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"gpio%i\00", align 1
@__kstrtab_bcm47xx_nvram_gpio_pin = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcm47xx_nvram_gpio_pin = external dso_local constant [0 x i8], align 1
@__ksymtab_bcm47xx_nvram_gpio_pin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcm47xx_nvram_gpio_pin to i32), ptr @__kstrtab_bcm47xx_nvram_gpio_pin, ptr @__kstrtabns_bcm47xx_nvram_gpio_pin }, section "___ksymtab+bcm47xx_nvram_gpio_pin", align 4
@__kstrtab_bcm47xx_nvram_get_contents = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcm47xx_nvram_get_contents = external dso_local constant [0 x i8], align 1
@__ksymtab_bcm47xx_nvram_get_contents = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcm47xx_nvram_get_contents to i32), ptr @__kstrtab_bcm47xx_nvram_get_contents, ptr @__kstrtabns_bcm47xx_nvram_get_contents }, section "___ksymtab+bcm47xx_nvram_get_contents", align 4
@__UNIQUE_ID_file164 = internal constant [59 x i8] c"bcm47xx_nvram.file=drivers/firmware/broadcom/bcm47xx_nvram\00", section ".modinfo", align 1
@__UNIQUE_ID_license165 = internal constant [29 x i8] c"bcm47xx_nvram.license=GPL v2\00", section ".modinfo", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\014nvram already initialized\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\013no nvram found\0A\00", align 1
@.str.4 = private unnamed_addr constant [89 x i8] c"\013The nvram size according to the header seems to be bigger than the partition on flash\0A\00", align 1
@.str.5 = private unnamed_addr constant [109 x i8] c"\013nvram on flash (%zu bytes) is bigger than the reserved space in memory, will just copy the first %i bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"nvram\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file164, ptr @__UNIQUE_ID_license165, ptr @__ksymtab_bcm47xx_nvram_get_contents, ptr @__ksymtab_bcm47xx_nvram_getenv, ptr @__ksymtab_bcm47xx_nvram_gpio_pin], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcm47xx_nvram_init_from_mem(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @ioremap(i32 noundef %0, i32 noundef %1) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %66, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @nvram_len, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = icmp ult i32 %1, 131072
  br i1 %9, label %36, label %12

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %64

12:                                               ; preds = %33, %8
  %13 = phi i32 [ %34, %33 ], [ 131072, %8 ]
  %14 = add i32 %13, -24576
  %15 = getelementptr i8, ptr %3, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1213418566
  br i1 %17, label %46, label %18

18:                                               ; preds = %12
  %19 = add i32 %13, -32768
  %20 = getelementptr i8, ptr %3, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 1213418566
  br i1 %22, label %46, label %23

23:                                               ; preds = %18
  %24 = add i32 %13, -61440
  %25 = getelementptr i8, ptr %3, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 1213418566
  br i1 %27, label %46, label %28

28:                                               ; preds = %23
  %29 = add i32 %13, -65536
  %30 = getelementptr i8, ptr %3, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 1213418566
  br i1 %32, label %46, label %33

33:                                               ; preds = %28
  %34 = shl i32 %13, 1
  %35 = icmp ugt i32 %34, %1
  br i1 %35, label %36, label %12

36:                                               ; preds = %33, %8
  %37 = getelementptr i8, ptr %3, i32 4096
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 1213418566
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %3, i32 1024
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 1213418566
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %64

46:                                               ; preds = %40, %36, %28, %23, %18, %12
  %47 = phi i32 [ 4096, %36 ], [ 1024, %40 ], [ %14, %12 ], [ %19, %18 ], [ %24, %23 ], [ %29, %28 ]
  %48 = getelementptr i8, ptr %3, i32 %47
  %49 = sub i32 %1, %47
  %50 = getelementptr inbounds %struct.nvram_header, ptr %48, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %51, %49
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %55

55:                                               ; preds = %53, %46
  %56 = phi i32 [ %49, %53 ], [ %51, %46 ]
  %57 = icmp ugt i32 %56, 65535
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %56, i32 noundef 65535) #10
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i32 [ 65535, %58 ], [ %56, %55 ]
  %62 = add nuw nsw i32 %61, 3
  %63 = lshr i32 %62, 2
  tail call void @__ioread32_copy(ptr noundef nonnull @nvram_buf, ptr noundef %48, i32 noundef %63) #9
  store i8 0, ptr getelementptr inbounds ([65536 x i8], ptr @nvram_buf, i32 0, i32 65535), align 1
  store i32 %61, ptr @nvram_len, align 4
  br label %64

64:                                               ; preds = %60, %44, %10
  %65 = phi i32 [ -17, %10 ], [ 0, %60 ], [ -6, %44 ]
  tail call void @iounmap(ptr noundef nonnull %3) #9
  br label %66

66:                                               ; preds = %64, %2
  %67 = phi i32 [ %65, %64 ], [ -12, %2 ]
  ret i32 %67
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcm47xx_nvram_getenv(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr @nvram_len, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @nvram_init()
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %8, %5
  br label %12

12:                                               ; preds = %31, %11
  %13 = phi ptr [ %34, %31 ], [ getelementptr inbounds ([65536 x i8], ptr @nvram_buf, i32 0, i32 20), %11 ]
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @strchr(ptr noundef %13, i32 noundef 61)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = getelementptr i8, ptr %17, i32 1
  %21 = ptrtoint ptr %17 to i32
  %22 = ptrtoint ptr %13 to i32
  %23 = sub i32 %21, %22
  %24 = tail call i32 @strlen(ptr noundef nonnull %0)
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = tail call i32 @strncmp(ptr noundef %13, ptr noundef nonnull %0, i32 noundef %23)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str, ptr noundef %20)
  br label %36

31:                                               ; preds = %26, %19
  %32 = tail call i32 @strlen(ptr noundef %20)
  %33 = getelementptr i8, ptr %17, i32 2
  %34 = getelementptr i8, ptr %33, i32 %32
  %35 = icmp ult ptr %34, getelementptr inbounds ([65536 x i8], ptr @nvram_buf, i32 1, i32 0)
  br i1 %35, label %12, label %36

36:                                               ; preds = %31, %29, %16, %12, %8, %3
  %37 = phi i32 [ %30, %29 ], [ -22, %3 ], [ %9, %8 ], [ -2, %31 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvram_init() unnamed_addr #0 {
  %1 = alloca %struct.nvram_header, align 4
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %1) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %1, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = tail call ptr @get_mtd_device_nm(ptr noundef nonnull @.str.6) #9
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %22, label %5

5:                                                ; preds = %0
  %6 = call i32 @mtd_read(ptr noundef %3, i64 noundef 0, i32 noundef 20, ptr noundef nonnull %2, ptr noundef nonnull %1) #9
  %7 = icmp eq i32 %6, 0
  %8 = load i32, ptr %1, align 4
  %9 = icmp eq i32 %8, 1213418566
  %10 = select i1 %7, i1 %9, i1 false
  %11 = getelementptr inbounds %struct.nvram_header, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 20
  %14 = select i1 %10, i1 %13, i1 false
  br i1 %14, label %15, label %22

15:                                               ; preds = %5
  store i32 %12, ptr @nvram_len, align 4
  %16 = icmp ugt i32 %12, 65535
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %12, i32 noundef 65536) #10
  store i32 65535, ptr @nvram_len, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ 65535, %17 ], [ %12, %15 ]
  %21 = call i32 @mtd_read(ptr noundef %3, i64 noundef 0, i32 noundef %20, ptr noundef nonnull @nvram_len, ptr noundef nonnull @nvram_buf) #9
  br label %22

22:                                               ; preds = %19, %5, %0
  %23 = phi i32 [ %21, %19 ], [ -19, %0 ], [ -6, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %1) #9
  ret i32 %23
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcm47xx_nvram_gpio_pin(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [7 x i8], align 1
  %3 = alloca [30 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) @__const.bcm47xx_nvram_gpio_pin.nvram_var, i32 7, i1 false)
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(30) %3, i8 0, i32 30, i1 false), !annotation !8
  br label %4

4:                                                ; preds = %14, %1
  %5 = phi i32 [ 0, %1 ], [ %15, %14 ]
  %6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 7, ptr noundef nonnull @.str.1, i32 noundef %5)
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 30)
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = call i32 @strcmp(ptr noundef %0, ptr noundef nonnull %3)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %8, %4
  %15 = add nuw nsw i32 %5, 1
  %16 = icmp eq i32 %15, 32
  br i1 %16, label %17, label %4

17:                                               ; preds = %14, %11
  %18 = phi i32 [ %5, %11 ], [ -2, %14 ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #9
  ret i32 %18
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @bcm47xx_nvram_get_contents(ptr nocapture noundef %0) #0 {
  %2 = load i32, ptr @nvram_len, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @nvram_init()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = load i32, ptr @nvram_len, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ %2, %1 ]
  %11 = add i32 %10, -20
  store i32 %11, ptr %0, align 4
  %12 = tail call noalias ptr @vmalloc(i32 noundef %11) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %12, ptr align 1 getelementptr inbounds ([65536 x i8], ptr @nvram_buf, i32 0, i32 20), i32 %15, i1 false)
  br label %16

16:                                               ; preds = %14, %9, %4
  %17 = phi ptr [ %12, %14 ], [ null, %4 ], [ null, %9 ]
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ioread32_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device_nm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

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
