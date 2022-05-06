; ModuleID = '/llk/IR/drivers/soc/tegra/fuse/tegra-apbmisc.c_pt.bc'
source_filename = "../drivers/soc/tegra/fuse/tegra-apbmisc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_read_ram_code:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_read_ram_code\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_read_ram_code:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@chipid = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"drivers/soc/tegra/fuse/tegra-apbmisc.c\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Tegra APB MISC not yet available\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Tegra ABP MISC not yet available\0A\00", align 1
@strapping = internal unnamed_addr global i32 0, align 4
@long_ram_code = internal unnamed_addr global i8 0, align 1
@__kstrtab_tegra_read_ram_code = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_read_ram_code = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_read_ram_code = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_read_ram_code to i32), ptr @__kstrtab_tegra_read_ram_code, ptr @__kstrtabns_tegra_read_ram_code }, section "___ksymtab_gpl+tegra_read_ram_code", align 4
@tegra_sku_info = external dso_local local_unnamed_addr global %struct.tegra_sku_info, align 4
@apbmisc_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-apbmisc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-misc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-misc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra234-misc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"nvidia,tegra124\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"\014Using APBMISC region %pR\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"\014Using strapping options registers %pR\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"\013failed to get APBMISC registers\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"\013failed to get strapping options registers\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"\013failed to map APBMISC registers\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"\013failed to map strapping options registers\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"nvidia,long-ram-code\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_tegra_read_ram_code], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_read_chipid() local_unnamed_addr #0 {
  %1 = load i32, ptr @chipid, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5, !prof !8

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  %4 = load i32, ptr @chipid, align 4
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ %1, %0 ]
  ret i32 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @tegra_get_chip_id() local_unnamed_addr #0 {
  %1 = load i32, ptr @chipid, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5, !prof !8

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  %4 = load i32, ptr @chipid, align 4
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ %1, %0 ]
  %7 = lshr i32 %6, 8
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @tegra_get_major_rev() local_unnamed_addr #0 {
  %1 = load i32, ptr @chipid, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5, !prof !8

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  %4 = load i32, ptr @chipid, align 4
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ %1, %0 ]
  %7 = trunc i32 %6 to i8
  %8 = lshr i8 %7, 4
  ret i8 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @tegra_get_minor_rev() local_unnamed_addr #0 {
  %1 = load i32, ptr @chipid, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5, !prof !8

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  %4 = load i32, ptr @chipid, align 4
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ %1, %0 ]
  %7 = lshr i32 %6, 16
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 15
  ret i8 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @tegra_get_platform() local_unnamed_addr #0 {
  %1 = load i32, ptr @chipid, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5, !prof !8

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  %4 = load i32, ptr @chipid, align 4
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ %1, %0 ]
  %7 = lshr i32 %6, 20
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 15
  ret i8 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @tegra_is_silicon() local_unnamed_addr #0 {
  %1 = load i32, ptr @chipid, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5, !prof !8

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  %4 = load i32, ptr @chipid, align 4
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ %1, %0 ]
  %7 = lshr i32 %6, 8
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %17 [
    i8 25, label %9
    i8 35, label %9
  ]

9:                                                ; preds = %5, %5
  %10 = icmp eq i32 %6, 0
  br i1 %10, label %11, label %13, !prof !8

11:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  %12 = load i32, ptr @chipid, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %12, %11 ], [ %6, %9 ]
  %15 = and i32 %14, 15728640
  %16 = icmp eq i32 %15, 0
  br label %17

17:                                               ; preds = %13, %5
  %18 = phi i1 [ %16, %13 ], [ true, %5 ]
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_read_straps() local_unnamed_addr #0 {
  %1 = load i32, ptr @chipid, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.2) #6
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, ptr @strapping, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_read_ram_code() #0 {
  %1 = load i32, ptr @chipid, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.2) #6
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, ptr @strapping, align 4
  %6 = load i8, ptr @long_ram_code, align 1, !range !9
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 48, i32 240
  %9 = and i32 %8, %5
  %10 = lshr exact i32 %9, 4
  ret i32 %10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @tegra_init_revision() local_unnamed_addr #3 section ".init.text" {
  %1 = load i32, ptr @chipid, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5, !prof !8

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  %4 = load i32, ptr @chipid, align 4
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ %1, %0 ]
  %7 = tail call zeroext i8 @tegra_get_minor_rev()
  switch i8 %7, label %21 [
    i8 1, label %22
    i8 2, label %8
    i8 3, label %9
    i8 4, label %20
  ]

8:                                                ; preds = %5
  br label %22

9:                                                ; preds = %5
  %10 = lshr i32 %6, 8
  %11 = trunc i32 %10 to i8
  %12 = icmp eq i8 %11, 32
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = tail call i32 @tegra_fuse_read_spare(i32 noundef 18) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = tail call i32 @tegra_fuse_read_spare(i32 noundef 19) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %9
  br label %22

20:                                               ; preds = %5
  br label %22

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21, %20, %19, %16, %13, %8, %5
  %23 = phi i32 [ 3, %19 ], [ 0, %21 ], [ 5, %20 ], [ 2, %8 ], [ 1, %5 ], [ 4, %16 ], [ 4, %13 ]
  store i32 %23, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 11), align 4
  %24 = tail call i32 @tegra_fuse_read_early(i32 noundef 16) #7
  store i32 %24, ptr @tegra_sku_info, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @tegra_fuse_read_spare(i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @tegra_fuse_read_early(i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @tegra_init_apbmisc() local_unnamed_addr #3 section ".init.text" {
  %1 = alloca %struct.resource, align 4
  %2 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %1, i8 0, i32 32, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !10
  %3 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @apbmisc_match, ptr noundef null) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %0
  %6 = tail call zeroext i1 @soc_is_tegra() #6
  br i1 %6, label %7, label %57

7:                                                ; preds = %5
  store i32 1879050240, ptr %1, align 4
  %8 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  store i32 1879050339, ptr %8, align 4
  %9 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 3
  store i32 512, ptr %9, align 4
  %10 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.3) #6
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 1879048200, i32 1879107684
  %13 = select i1 %11, i32 1879048203, i32 1879107687
  store i32 %12, ptr %2, align 4
  %14 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  store i32 512, ptr %15, align 4
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #7
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %2) #7
  br label %28

18:                                               ; preds = %0
  %19 = call i32 @of_address_to_resource(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %1) #6
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #7
  br label %57

23:                                               ; preds = %18
  %24 = call i32 @of_address_to_resource(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %2) #6
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %57

28:                                               ; preds = %23, %7
  %29 = load i32, ptr %1, align 4
  %30 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 1, %29
  %33 = add i32 %32, %31
  %34 = call ptr @ioremap(i32 noundef %29, i32 noundef %33) #6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #7
  br label %41

38:                                               ; preds = %28
  %39 = getelementptr i8, ptr %34, i32 4
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #6, !srcloc !11
  store i32 %40, ptr @chipid, align 4
  call void @iounmap(ptr noundef nonnull %34) #6
  br label %41

41:                                               ; preds = %38, %36
  %42 = load i32, ptr %2, align 4
  %43 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = sub i32 1, %42
  %46 = add i32 %45, %44
  %47 = call ptr @ioremap(i32 noundef %42, i32 noundef %46) #6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #7
  br label %53

51:                                               ; preds = %41
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %47) #6, !srcloc !11
  store i32 %52, ptr @strapping, align 4
  call void @iounmap(ptr noundef nonnull %47) #6
  br label %53

53:                                               ; preds = %51, %49
  %54 = call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %55 = icmp ne ptr %54, null
  %56 = zext i1 %55 to i8
  store i8 %56, ptr @long_ram_code, align 1
  br label %57

57:                                               ; preds = %53, %26, %21, %5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @soc_is_tegra() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
!10 = !{!"auto-init"}
!11 = !{i64 2809060}
