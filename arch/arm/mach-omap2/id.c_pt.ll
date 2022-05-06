; ModuleID = '/llk/IR/arch/arm/mach-omap2/id.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/id.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_rev:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_rev\22\09\09\09\09\09"
module asm "__kstrtabns_omap_rev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_type:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_type\22\09\09\09\09\09"
module asm "__kstrtabns_omap_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.omap_id = type { i16, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.omap_die_id = type { i32, i32, i32, i32 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@omap_revision = internal unnamed_addr global i32 0, align 4
@__kstrtab_omap_rev = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_rev = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_rev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_rev to i32), ptr @__kstrtab_omap_rev, ptr @__kstrtabns_omap_rev }, section "___ksymtab+omap_rev", align 4
@omap_type.val = internal unnamed_addr global i32 1792, align 4
@.str = private unnamed_addr constant [28 x i8] c"\013Cannot detect omap type!\0A\00", align 1
@__kstrtab_omap_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_type = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_type to i32), ptr @__kstrtab_omap_type, ptr @__kstrtabns_omap_type }, section "___ksymtab+omap_type", align 4
@tap_base = internal unnamed_addr global ptr null, align 4
@__initcall__kmod_id__247_145___omap_feed_randpool6 = internal global ptr @__omap_feed_randpool, section ".initcall6.init", align 4
@tap_prod_id = internal unnamed_addr global i16 0, align 2
@omap_ids = internal unnamed_addr constant [6 x %struct.omap_id] [%struct.omap_id { i16 -18983, i8 0, i32 606076964 }, %struct.omap_id { i16 -18983, i8 1, i32 606081060 }, %struct.omap_id { i16 -18983, i8 2, i32 606085156 }, %struct.omap_id { i16 -18983, i8 4, i32 606208036 }, %struct.omap_id { i16 -18983, i8 8, i32 606273572 }, %struct.omap_id { i16 -18806, i8 0, i32 607125540 }], section ".init.data", align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"\013Unknown OMAP CPU id\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"\013Unknown OMAP device type. Handling it as OMAP%04x\0A\00", align 1
@soc_name = internal global [16 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"OMAP%04x\00", align 1
@soc_rev = internal global [16 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ES%x\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\016%s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\01c%s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@omap_features = dso_local local_unnamed_addr global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"2.1\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"3.0\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"3.1\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"3.1.2\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"1.2\00", align 1
@.str.16 = private unnamed_addr constant [68 x i8] c"\014Warning: unknown chip type: hawkeye %04x, assuming OMAP3630ES1.2\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"ES%s\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"ES%d.%d\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"\016%s %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"ES%d.0\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"\014%s: unknown idcode=0x%08x (hawkeye=0x%08x,rev=0x%x)\0A\00", align 1
@__func__.dra7xxx_check_revision = private unnamed_addr constant [23 x i8] c"dra7xxx_check_revision\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"DRA%03x\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"OMAP3630/DM3730\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"OMAP3621\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"DM3725\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"OMAP3615/AM3715\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"AM3703\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"OMAP3611\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"AM3517\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"AM3505\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"TI816X\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"AM335X\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"AM437x\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"TI814X\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"OMAP3430/3530\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"OMAP3525\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"OMAP3515\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"OMAP3503\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"%s %s (\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"l2cache \00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"iva \00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"sgx \00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"neon \00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"isp \00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"192mhz_clk \00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.48 = private unnamed_addr constant [6 x i8] c"OMAP3\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"OMAP4\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"OMAP5\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"AM33xx\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"AM43xx\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"DRA7\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@omap_soc_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @omap_soc_attrs, ptr null }, align 4
@omap_soc_attrs = internal global [2 x ptr] [ptr @dev_attr_type, ptr null], align 4
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292 }, ptr @type_show, ptr null }, align 4
@.str.55 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@omap_types = internal unnamed_addr constant [5 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], align 4
@.str.57 = private unnamed_addr constant [4 x i8] c"TST\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"EMU\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"HS\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"GP\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"BAD\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__initcall__kmod_id__247_145___omap_feed_randpool6, ptr @__ksymtab_omap_rev, ptr @__ksymtab_omap_type, ptr @__omap_feed_randpool], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @omap_rev() #0 {
  %1 = load i32, ptr @omap_revision, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_type() #1 {
  %1 = load i32, ptr @omap_type.val, align 4
  %2 = icmp ult i32 %1, 1792
  br i1 %2, label %23, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @omap_revision, align 4
  %5 = and i32 %4, -16777216
  switch i32 %5, label %6 [
    i32 -2130706432, label %18
    i32 855638016, label %18
    i32 1124073472, label %18
  ]

6:                                                ; preds = %3
  %7 = trunc i32 %4 to i8
  switch i8 %7, label %9 [
    i8 52, label %18
    i8 68, label %8
    i8 84, label %11
  ]

8:                                                ; preds = %6
  br label %18

9:                                                ; preds = %6
  %10 = icmp eq i32 %5, 117440512
  br i1 %10, label %11, label %15

11:                                               ; preds = %9, %6
  %12 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 308) #10
  %13 = lshr i32 %12, 6
  %14 = and i32 %13, 7
  store i32 %14, ptr @omap_type.val, align 4
  br label %23

15:                                               ; preds = %9
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  %17 = load i32, ptr @omap_type.val, align 4
  br label %23

18:                                               ; preds = %8, %6, %3, %3, %3
  %19 = phi i16 [ 708, %8 ], [ 64, %3 ], [ 64, %3 ], [ 64, %3 ], [ 752, %6 ]
  %20 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext %19) #10
  %21 = lshr i32 %20, 8
  %22 = and i32 %21, 7
  store i32 %22, ptr @omap_type.val, align 4
  br label %23

23:                                               ; preds = %18, %15, %11, %0
  %24 = phi i32 [ %1, %0 ], [ %22, %18 ], [ %17, %15 ], [ %14, %11 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_ctrl_readl(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_get_die_id(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  %2 = load i32, ptr @omap_revision, align 4
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %4 [
    i8 68, label %7
    i8 84, label %7
  ]

4:                                                ; preds = %1
  %5 = and i32 %2, -16777216
  %6 = icmp eq i32 %5, 117440512
  br i1 %6, label %7, label %22

7:                                                ; preds = %4, %1, %1
  %8 = load ptr, ptr @tap_base, align 4
  %9 = getelementptr i8, ptr %8, i32 512
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !8
  store i32 %10, ptr %0, align 4
  %11 = load ptr, ptr @tap_base, align 4
  %12 = getelementptr i8, ptr %11, i32 520
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #10, !srcloc !8
  %14 = getelementptr inbounds %struct.omap_die_id, ptr %0, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr @tap_base, align 4
  %16 = getelementptr i8, ptr %15, i32 524
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #10, !srcloc !8
  %18 = getelementptr inbounds %struct.omap_die_id, ptr %0, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  %19 = load ptr, ptr @tap_base, align 4
  %20 = getelementptr i8, ptr %19, i32 528
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #10, !srcloc !8
  br label %37

22:                                               ; preds = %4
  %23 = load ptr, ptr @tap_base, align 4
  %24 = getelementptr i8, ptr %23, i32 536
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #10, !srcloc !8
  store i32 %25, ptr %0, align 4
  %26 = load ptr, ptr @tap_base, align 4
  %27 = getelementptr i8, ptr %26, i32 540
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #10, !srcloc !8
  %29 = getelementptr inbounds %struct.omap_die_id, ptr %0, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = load ptr, ptr @tap_base, align 4
  %31 = getelementptr i8, ptr %30, i32 544
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #10, !srcloc !8
  %33 = getelementptr inbounds %struct.omap_die_id, ptr %0, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  %34 = load ptr, ptr @tap_base, align 4
  %35 = getelementptr i8, ptr %34, i32 548
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #10, !srcloc !8
  br label %37

37:                                               ; preds = %22, %7
  %38 = phi i32 [ %36, %22 ], [ %21, %7 ]
  %39 = getelementptr inbounds %struct.omap_die_id, ptr %0, i32 0, i32 3
  store i32 %38, ptr %39, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @__omap_feed_randpool() #5 section ".init.text" {
  %1 = load i32, ptr @omap_revision, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call fastcc void @omap_feed_randpool() #12
  br label %4

4:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap_feed_randpool() unnamed_addr #5 section ".init.text" {
  %1 = alloca %struct.omap_die_id, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i32 16, i1 false), !annotation !9
  call void @omap_get_die_id(ptr noundef nonnull %1)
  call void @add_device_randomness(ptr noundef nonnull %1, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap2xxx_check_revision() local_unnamed_addr #5 section ".init.text" {
  %1 = alloca %struct.omap_die_id, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #10
  %2 = load ptr, ptr @tap_base, align 4
  %3 = getelementptr i8, ptr %2, i32 516
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  %5 = load ptr, ptr @tap_base, align 4
  %6 = load i16, ptr @tap_prod_id, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !8
  %10 = lshr i32 %4, 12
  %11 = lshr i32 %9, 16
  %12 = and i32 %11, 15
  call void @omap_get_die_id(ptr noundef nonnull %1)
  %13 = trunc i32 %10 to i16
  br label %14

14:                                               ; preds = %19, %0
  %15 = phi i32 [ 0, %0 ], [ %20, %19 ]
  %16 = getelementptr [6 x %struct.omap_id], ptr @omap_ids, i32 0, i32 %15
  %17 = load i16, ptr %16, align 4
  %18 = icmp eq i16 %17, %13
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = add nuw nsw i32 %15, 1
  %21 = icmp eq i32 %20, 6
  br i1 %21, label %54, label %14

22:                                               ; preds = %14
  %23 = icmp eq i32 %15, 6
  br i1 %23, label %54, label %24

24:                                               ; preds = %22
  %25 = icmp ult i32 %15, 6
  br i1 %25, label %26, label %40

26:                                               ; preds = %32, %24
  %27 = phi i32 [ %33, %32 ], [ %15, %24 ]
  %28 = getelementptr [6 x %struct.omap_id], ptr @omap_ids, i32 0, i32 %27, i32 1
  %29 = load i8, ptr %28, align 2
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %12, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %26
  %33 = add nuw nsw i32 %27, 1
  %34 = icmp eq i32 %33, 6
  br i1 %34, label %35, label %26

35:                                               ; preds = %32
  %36 = getelementptr [6 x %struct.omap_id], ptr @omap_ids, i32 0, i32 %15, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 16
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %38) #11
  br label %40

40:                                               ; preds = %35, %26, %24
  %41 = load i32, ptr @omap_revision, align 4
  %42 = lshr i32 %41, 16
  %43 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @soc_name, ptr noundef nonnull @.str.3, i32 noundef %42)
  %44 = load i32, ptr @omap_revision, align 4
  %45 = lshr i32 %44, 12
  %46 = and i32 %45, 15
  %47 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @soc_rev, ptr noundef nonnull @.str.4, i32 noundef %46)
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @soc_name) #11
  %49 = load i32, ptr @omap_revision, align 4
  %50 = and i32 %49, 3840
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %40
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @soc_rev) #11
  br label %54

54:                                               ; preds = %52, %40, %22, %19
  %55 = phi ptr [ @.str.1, %22 ], [ @.str.7, %40 ], [ @.str.7, %52 ], [ @.str.1, %19 ]
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %55) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap3xxx_check_features() local_unnamed_addr #5 section ".init.text" {
  store i32 0, ptr @omap_features, align 4
  %1 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1100) #10
  %2 = and i32 %1, 3072
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32, ptr @omap_features, align 4
  %6 = or i32 %5, 1
  store i32 %6, ptr @omap_features, align 4
  br label %7

7:                                                ; preds = %4, %0
  %8 = and i32 %1, 4096
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, ptr @omap_features, align 4
  %12 = or i32 %11, 2
  store i32 %12, ptr @omap_features, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = and i32 %1, 24576
  %15 = icmp eq i32 %14, 16384
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr @omap_features, align 4
  %18 = or i32 %17, 4
  store i32 %18, ptr @omap_features, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = and i32 %1, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, ptr @omap_features, align 4
  %24 = or i32 %23, 8
  store i32 %24, ptr @omap_features, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = and i32 %1, 32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, ptr @omap_features, align 4
  %30 = or i32 %29, 16
  store i32 %30, ptr @omap_features, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, ptr @omap_revision, align 4
  %33 = and i32 %32, -1048576
  %34 = icmp eq i32 %33, 909115392
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = and i32 %32, -65536
  %37 = icmp eq i32 %36, 875560960
  br i1 %37, label %41, label %44

38:                                               ; preds = %31
  %39 = load i32, ptr @omap_features, align 4
  %40 = or i32 %39, 96
  store i32 %40, ptr @omap_features, align 4
  br label %47

41:                                               ; preds = %35
  %42 = load i32, ptr @omap_features, align 4
  %43 = or i32 %42, 64
  store i32 %43, ptr @omap_features, align 4
  switch i32 %32, label %50 [
    i32 875562292, label %47
    i32 875562036, label %47
  ]

44:                                               ; preds = %35
  switch i32 %32, label %45 [
    i32 875562036, label %47
    i32 875562292, label %47
  ]

45:                                               ; preds = %44
  %46 = load i32, ptr @omap_features, align 4
  br label %50

47:                                               ; preds = %44, %44, %41, %41, %38
  %48 = load i32, ptr @omap_features, align 4
  %49 = or i32 %48, 256
  br label %50

50:                                               ; preds = %47, %45, %41
  %51 = phi i32 [ %46, %45 ], [ %43, %41 ], [ %49, %47 ]
  %52 = or i32 %51, 128
  %53 = and i32 %32, -16777216
  %54 = icmp eq i32 %53, 889192448
  %55 = and i32 %52, -19
  %56 = select i1 %54, i32 %55, i32 %52
  store i32 %56, ptr @omap_features, align 4
  tail call fastcc void @omap3_cpuinfo() #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap3_cpuinfo() unnamed_addr #5 section ".init.text" {
  %1 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %1, i8 0, i64 64, i1 false)
  %2 = load i32, ptr @omap_revision, align 4
  %3 = and i32 %2, -1048576
  %4 = icmp eq i32 %3, 909115392
  br i1 %4, label %5, label %21

5:                                                ; preds = %0
  %6 = load i32, ptr @omap_features, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %6, 4
  %10 = icmp eq i32 %9, 0
  br i1 %8, label %16, label %11

11:                                               ; preds = %5
  br i1 %10, label %43, label %12

12:                                               ; preds = %11
  %13 = and i32 %6, 16
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr @.str.24, ptr @.str.23
  br label %43

16:                                               ; preds = %5
  br i1 %10, label %17, label %43

17:                                               ; preds = %16
  %18 = and i32 %6, 16
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, ptr @.str.28, ptr @.str.27
  br label %43

21:                                               ; preds = %0
  %22 = and i32 %2, -16777216
  %23 = icmp eq i32 %22, 889192448
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, ptr @omap_features, align 4
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, ptr @.str.30, ptr @.str.29
  br label %43

29:                                               ; preds = %21
  switch i32 %3, label %30 [
    i32 -2124414976, label %43
    i32 860880896, label %40
    i32 1131413504, label %41
    i32 -2126512128, label %42
  ]

30:                                               ; preds = %29
  %31 = load i32, ptr @omap_features, align 4
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  %34 = and i32 %31, 4
  %35 = icmp eq i32 %34, 0
  br i1 %33, label %38, label %36

36:                                               ; preds = %30
  %37 = select i1 %35, ptr @.str.36, ptr @.str.35
  br label %43

38:                                               ; preds = %30
  %39 = select i1 %35, ptr @.str.38, ptr @.str.37
  br label %43

40:                                               ; preds = %29
  br label %43

41:                                               ; preds = %29
  br label %43

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %41, %40, %38, %36, %29, %24, %17, %16, %12, %11
  %44 = phi ptr [ %15, %12 ], [ %20, %17 ], [ %28, %24 ], [ @.str.26, %16 ], [ @.str.31, %29 ], [ %39, %38 ], [ @.str.25, %11 ], [ %37, %36 ], [ @.str.32, %40 ], [ @.str.33, %41 ], [ @.str.34, %42 ]
  %45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull @soc_name, i32 noundef 16, ptr noundef nonnull @.str.39, ptr noundef nonnull %44) #10
  %46 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %1, i32 noundef 64, ptr noundef nonnull @.str.40, ptr noundef nonnull @soc_name, ptr noundef nonnull @soc_rev) #10
  %47 = load i32, ptr @omap_features, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %43
  %51 = getelementptr i8, ptr %1, i32 %46
  %52 = sub i32 64, %46
  %53 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %51, i32 noundef %52, ptr noundef nonnull @.str.41) #10
  %54 = add i32 %53, %46
  %55 = load i32, ptr @omap_features, align 4
  br label %56

56:                                               ; preds = %50, %43
  %57 = phi i32 [ %55, %50 ], [ %47, %43 ]
  %58 = phi i32 [ %54, %50 ], [ %46, %43 ]
  %59 = and i32 %57, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = getelementptr i8, ptr %1, i32 %58
  %63 = sub i32 64, %58
  %64 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %62, i32 noundef %63, ptr noundef nonnull @.str.42) #10
  %65 = add i32 %64, %58
  %66 = load i32, ptr @omap_features, align 4
  br label %67

67:                                               ; preds = %61, %56
  %68 = phi i32 [ %66, %61 ], [ %57, %56 ]
  %69 = phi i32 [ %65, %61 ], [ %58, %56 ]
  %70 = and i32 %68, 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = getelementptr i8, ptr %1, i32 %69
  %74 = sub i32 64, %69
  %75 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %73, i32 noundef %74, ptr noundef nonnull @.str.43) #10
  %76 = add i32 %75, %69
  %77 = load i32, ptr @omap_features, align 4
  br label %78

78:                                               ; preds = %72, %67
  %79 = phi i32 [ %77, %72 ], [ %68, %67 ]
  %80 = phi i32 [ %76, %72 ], [ %69, %67 ]
  %81 = and i32 %79, 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = getelementptr i8, ptr %1, i32 %80
  %85 = sub i32 64, %80
  %86 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %84, i32 noundef %85, ptr noundef nonnull @.str.44) #10
  %87 = add i32 %86, %80
  %88 = load i32, ptr @omap_features, align 4
  br label %89

89:                                               ; preds = %83, %78
  %90 = phi i32 [ %88, %83 ], [ %79, %78 ]
  %91 = phi i32 [ %87, %83 ], [ %80, %78 ]
  %92 = and i32 %90, 16
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %89
  %95 = getelementptr i8, ptr %1, i32 %91
  %96 = sub i32 64, %91
  %97 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %95, i32 noundef %96, ptr noundef nonnull @.str.45) #10
  %98 = add i32 %97, %91
  %99 = load i32, ptr @omap_features, align 4
  br label %100

100:                                              ; preds = %94, %89
  %101 = phi i32 [ %99, %94 ], [ %90, %89 ]
  %102 = phi i32 [ %98, %94 ], [ %91, %89 ]
  %103 = and i32 %101, 32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = getelementptr i8, ptr %1, i32 %102
  %107 = sub i32 64, %102
  %108 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %106, i32 noundef %107, ptr noundef nonnull @.str.46) #10
  %109 = add i32 %108, %102
  br label %110

110:                                              ; preds = %105, %100
  %111 = phi i32 [ %109, %105 ], [ %102, %100 ]
  %112 = getelementptr i8, ptr %1, i32 %111
  %113 = getelementptr i8, ptr %112, i32 -1
  %114 = load i8, ptr %113, align 1
  %115 = icmp eq i8 %114, 32
  %116 = sext i1 %115 to i32
  %117 = add i32 %111, %116
  %118 = getelementptr i8, ptr %1, i32 %117
  %119 = sub i32 64, %117
  %120 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %118, i32 noundef %119, ptr noundef nonnull @.str.47) #10
  %121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %1) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap4xxx_check_features() local_unnamed_addr #5 section ".init.text" {
  %1 = load ptr, ptr @tap_base, align 4
  %2 = getelementptr i8, ptr %1, i32 536
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #10, !srcloc !8
  %4 = and i32 %3, 196608
  %5 = icmp eq i32 %4, 131072
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 512, ptr @omap_features, align 4
  br label %7

7:                                                ; preds = %6, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @ti81xx_check_features() local_unnamed_addr #5 section ".init.text" {
  store i32 8, ptr @omap_features, align 4
  tail call fastcc void @omap3_cpuinfo() #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @am33xx_check_features() local_unnamed_addr #5 section ".init.text" {
  store i32 8, ptr @omap_features, align 4
  %1 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1540) #10
  %2 = and i32 %1, 536870912
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32, ptr @omap_features, align 4
  %6 = or i32 %5, 4
  store i32 %6, ptr @omap_features, align 4
  br label %7

7:                                                ; preds = %4, %0
  tail call fastcc void @omap3_cpuinfo() #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap3xxx_check_revision() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #13, !srcloc !10
  %2 = and i32 %1, 65535
  %3 = icmp eq i32 %2, 49280
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 875561012, ptr @omap_revision, align 4
  br label %49

5:                                                ; preds = %0
  %6 = load ptr, ptr @tap_base, align 4
  %7 = getelementptr i8, ptr %6, i32 516
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !8
  %9 = lshr i32 %8, 12
  %10 = lshr i32 %8, 28
  %11 = trunc i32 %9 to i16
  switch i16 %11, label %43 [
    i16 -18514, label %12
    i16 -18328, label %18
    i16 -18287, label %22
    i16 -18402, label %26
    i16 -18108, label %31
    i16 -18036, label %35
    i16 -18190, label %39
    i16 -18072, label %39
  ]

12:                                               ; preds = %5
  switch i32 %10, label %17 [
    i32 0, label %13
    i32 1, label %13
    i32 2, label %14
    i32 3, label %15
    i32 4, label %16
  ]

13:                                               ; preds = %12, %12
  store i32 875561268, ptr @omap_revision, align 4
  br label %46

14:                                               ; preds = %12
  store i32 875561524, ptr @omap_revision, align 4
  br label %46

15:                                               ; preds = %12
  store i32 875561780, ptr @omap_revision, align 4
  br label %46

16:                                               ; preds = %12
  store i32 875562036, ptr @omap_revision, align 4
  br label %46

17:                                               ; preds = %12
  store i32 875562292, ptr @omap_revision, align 4
  br label %46

18:                                               ; preds = %5
  %19 = icmp ult i32 %8, 268435456
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  store i32 890699828, ptr @omap_revision, align 4
  br label %46

21:                                               ; preds = %18
  store i32 890700084, ptr @omap_revision, align 4
  br label %46

22:                                               ; preds = %5
  switch i32 %10, label %25 [
    i32 0, label %23
    i32 1, label %24
  ]

23:                                               ; preds = %22
  store i32 909115444, ptr @omap_revision, align 4
  br label %46

24:                                               ; preds = %22
  store i32 909115700, ptr @omap_revision, align 4
  br label %46

25:                                               ; preds = %22
  store i32 909115956, ptr @omap_revision, align 4
  br label %46

26:                                               ; preds = %5
  switch i32 %10, label %30 [
    i32 0, label %27
    i32 1, label %28
    i32 2, label %29
  ]

27:                                               ; preds = %26
  store i32 -2124414847, ptr @omap_revision, align 4
  br label %46

28:                                               ; preds = %26
  store i32 -2124414591, ptr @omap_revision, align 4
  br label %46

29:                                               ; preds = %26
  store i32 -2124414335, ptr @omap_revision, align 4
  br label %46

30:                                               ; preds = %26
  store i32 -2124414079, ptr @omap_revision, align 4
  br label %46

31:                                               ; preds = %5
  switch i32 %10, label %34 [
    i32 0, label %32
    i32 1, label %33
  ]

32:                                               ; preds = %31
  store i32 860880947, ptr @omap_revision, align 4
  br label %46

33:                                               ; preds = %31
  store i32 860881203, ptr @omap_revision, align 4
  br label %46

34:                                               ; preds = %31
  store i32 860881459, ptr @omap_revision, align 4
  br label %46

35:                                               ; preds = %5
  switch i32 %10, label %38 [
    i32 0, label %36
    i32 1, label %37
  ]

36:                                               ; preds = %35
  store i32 1131417600, ptr @omap_revision, align 4
  br label %46

37:                                               ; preds = %35
  store i32 1131417856, ptr @omap_revision, align 4
  br label %46

38:                                               ; preds = %35
  store i32 1131418112, ptr @omap_revision, align 4
  br label %46

39:                                               ; preds = %5, %5
  switch i32 %10, label %42 [
    i32 0, label %40
    i32 1, label %40
    i32 2, label %41
  ]

40:                                               ; preds = %39, %39
  store i32 -2126511999, ptr @omap_revision, align 4
  br label %46

41:                                               ; preds = %39
  store i32 -2126511743, ptr @omap_revision, align 4
  br label %46

42:                                               ; preds = %39
  store i32 -2126511487, ptr @omap_revision, align 4
  br label %46

43:                                               ; preds = %5
  %44 = and i32 %9, 65535
  store i32 909115956, ptr @omap_revision, align 4
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %44) #11
  br label %46

46:                                               ; preds = %43, %42, %41, %40, %38, %37, %36, %34, %33, %32, %30, %29, %28, %27, %25, %24, %23, %21, %20, %17, %16, %15, %14, %13
  %47 = phi ptr [ @.str.15, %43 ], [ @.str.10, %42 ], [ @.str.9, %41 ], [ @.str.8, %40 ], [ @.str.15, %38 ], [ @.str.14, %37 ], [ @.str.8, %36 ], [ @.str.10, %34 ], [ @.str.9, %33 ], [ @.str.8, %32 ], [ @.str.10, %30 ], [ @.str.9, %29 ], [ @.str.14, %28 ], [ @.str.8, %27 ], [ @.str.15, %25 ], [ @.str.14, %24 ], [ @.str.8, %23 ], [ @.str.8, %20 ], [ @.str.14, %21 ], [ @.str.13, %17 ], [ @.str.12, %16 ], [ @.str.11, %15 ], [ @.str.10, %14 ], [ @.str.9, %13 ]
  %48 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @soc_rev, ptr noundef nonnull @.str.17, ptr noundef nonnull %47)
  br label %49

49:                                               ; preds = %46, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap4xxx_check_revision() local_unnamed_addr #5 section ".init.text" {
  %1 = load ptr, ptr @tap_base, align 4
  %2 = getelementptr i8, ptr %1, i32 516
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #10, !srcloc !8
  %4 = lshr i32 %3, 12
  %5 = freeze i32 %3
  %6 = lshr i32 %5, 28
  %7 = trunc i32 %6 to i8
  %8 = icmp eq i8 %7, 0
  %9 = trunc i32 %4 to i16
  br i1 %8, label %10, label %16

10:                                               ; preds = %0
  switch i16 %9, label %11 [
    i16 -18059, label %16
    i16 -18098, label %16
  ]

11:                                               ; preds = %10
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #13, !srcloc !10
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 15
  %15 = add nsw i8 %14, -1
  br label %16

16:                                               ; preds = %11, %10, %10, %0
  %17 = phi i8 [ 0, %10 ], [ 0, %10 ], [ %15, %11 ], [ %7, %0 ]
  switch i16 %9, label %27 [
    i16 -18350, label %18
    i16 -18084, label %21
    i16 -18098, label %24
    i16 -18059, label %28
  ]

18:                                               ; preds = %16
  %19 = icmp eq i8 %17, 0
  %20 = select i1 %19, i32 1144000580, i32 1144004676
  br label %28

21:                                               ; preds = %16
  switch i8 %17, label %23 [
    i8 3, label %28
    i8 4, label %22
  ]

22:                                               ; preds = %21
  br label %28

23:                                               ; preds = %21
  br label %28

24:                                               ; preds = %16
  %25 = icmp eq i8 %17, 0
  %26 = select i1 %25, i32 1147146308, i32 1147146564
  br label %28

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %24, %23, %22, %21, %18, %16
  %29 = phi i32 [ 1144005188, %22 ], [ 1144005444, %23 ], [ 1144005444, %27 ], [ %20, %18 ], [ 1144004932, %21 ], [ %26, %24 ], [ 1148194884, %16 ]
  %30 = phi i32 [ 17456, %22 ], [ 17456, %23 ], [ 17456, %27 ], [ 17456, %18 ], [ 17456, %21 ], [ 17504, %24 ], [ 17520, %16 ]
  store i32 %29, ptr @omap_revision, align 4
  %31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @soc_name, ptr noundef nonnull @.str.3, i32 noundef %30)
  %32 = load i32, ptr @omap_revision, align 4
  %33 = lshr i32 %32, 12
  %34 = and i32 %33, 15
  %35 = lshr i32 %32, 8
  %36 = and i32 %35, 15
  %37 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @soc_rev, ptr noundef nonnull @.str.18, i32 noundef %34, i32 noundef %36)
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @soc_name, ptr noundef nonnull @soc_rev) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap5xxx_check_revision() local_unnamed_addr #5 section ".init.text" {
  %1 = load ptr, ptr @tap_base, align 4
  %2 = getelementptr i8, ptr %1, i32 516
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #10, !srcloc !8
  %4 = lshr i32 %3, 12
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %12 [
    i16 -18110, label %6
    i16 -18024, label %9
  ]

6:                                                ; preds = %0
  %7 = icmp ult i32 %3, 268435456
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/id.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 616, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

9:                                                ; preds = %0
  %10 = icmp ult i32 %3, 268435456
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/id.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 627, 0\0A.popsection", ""() #10, !srcloc !12
  unreachable

12:                                               ; preds = %9, %6, %0
  %13 = phi i32 [ 1412440148, %6 ], [ 1412571220, %9 ], [ 1412440148, %0 ]
  %14 = phi i32 [ 21552, %6 ], [ 21554, %9 ], [ 21552, %0 ]
  store i32 %13, ptr @omap_revision, align 4
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @soc_name, ptr noundef nonnull @.str.3, i32 noundef %14)
  %16 = load i32, ptr @omap_revision, align 4
  %17 = lshr i32 %16, 12
  %18 = and i32 %17, 15
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @soc_rev, ptr noundef nonnull @.str.20, i32 noundef %18)
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @soc_name, ptr noundef nonnull @soc_rev) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @dra7xxx_check_revision() local_unnamed_addr #5 section ".init.text" {
  %1 = alloca %struct.omap_die_id, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i32 16, i1 false), !annotation !9
  call void @omap_get_die_id(ptr noundef nonnull %1)
  %2 = getelementptr inbounds %struct.omap_die_id, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr @tap_base, align 4
  %5 = getelementptr i8, ptr %4, i32 516
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !8
  %7 = lshr i32 %6, 12
  %8 = lshr i32 %6, 28
  %9 = trunc i32 %7 to i16
  switch i16 %9, label %21 [
    i16 -17584, label %10
    i16 -18032, label %15
    i16 -17988, label %18
  ]

10:                                               ; preds = %0
  %11 = lshr i32 %3, 16
  %12 = and i32 %11, 3
  switch i32 %12, label %14 [
    i32 2, label %24
    i32 3, label %13
  ]

13:                                               ; preds = %10
  br label %24

14:                                               ; preds = %10
  br label %24

15:                                               ; preds = %0
  switch i32 %8, label %17 [
    i32 0, label %24
    i32 1, label %16
  ]

16:                                               ; preds = %15
  br label %24

17:                                               ; preds = %15
  br label %24

18:                                               ; preds = %0
  switch i32 %8, label %20 [
    i32 0, label %24
    i32 1, label %19
  ]

19:                                               ; preds = %18
  br label %24

20:                                               ; preds = %18
  br label %24

21:                                               ; preds = %0
  %22 = and i32 %7, 65535
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.dra7xxx_check_revision, i32 noundef %6, i32 noundef %22, i32 noundef %8) #11
  br label %24

24:                                               ; preds = %21, %20, %19, %18, %17, %16, %15, %14, %13, %10
  %25 = phi i32 [ 119676928, %19 ], [ 119677184, %20 ], [ 122818816, %16 ], [ 122822656, %17 ], [ 123867136, %14 ], [ 123867139, %13 ], [ 122822656, %21 ], [ 123867138, %10 ], [ 122818560, %15 ], [ 119672832, %18 ]
  %26 = phi i32 [ 1826, %19 ], [ 1826, %20 ], [ 1874, %16 ], [ 1874, %17 ], [ 1890, %14 ], [ 1890, %13 ], [ 1874, %21 ], [ 1890, %10 ], [ 1874, %15 ], [ 1826, %18 ]
  store i32 %25, ptr @omap_revision, align 4
  %27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @soc_name, ptr noundef nonnull @.str.22, i32 noundef %26)
  %28 = load i32, ptr @omap_revision, align 4
  %29 = lshr i32 %28, 12
  %30 = and i32 %29, 15
  %31 = lshr i32 %28, 8
  %32 = and i32 %31, 15
  %33 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @soc_rev, ptr noundef nonnull @.str.18, i32 noundef %30, i32 noundef %32)
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @soc_name, ptr noundef nonnull @soc_rev) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #10
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define dso_local void @omap2_set_globals_tap(i32 noundef %0, ptr noundef %1) local_unnamed_addr #8 section ".init.text" {
  store i32 %0, ptr @omap_revision, align 4
  store ptr %1, ptr @tap_base, align 4
  %3 = and i32 %0, 255
  %4 = icmp eq i32 %3, 52
  %5 = select i1 %4, i16 528, i16 520
  store i16 %5, ptr @tap_prod_id, align 2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap_soc_device_init() local_unnamed_addr #5 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 28) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %0
  store ptr @soc_name, ptr %2, align 8
  %5 = tail call fastcc ptr @omap_get_family() #12
  %6 = getelementptr inbounds %struct.soc_device_attribute, ptr %2, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.soc_device_attribute, ptr %2, i32 0, i32 2
  store ptr @soc_rev, ptr %7, align 8
  %8 = getelementptr inbounds %struct.soc_device_attribute, ptr %2, i32 0, i32 6
  store ptr @omap_soc_group, ptr %8, align 8
  %9 = tail call ptr @soc_device_register(ptr noundef nonnull %2) #10
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void @kfree(ptr noundef nonnull %2) #10
  br label %12

12:                                               ; preds = %11, %4, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc noalias ptr @omap_get_family() unnamed_addr #5 section ".init.text" {
  %1 = load i32, ptr @omap_revision, align 4
  %2 = trunc i32 %1 to i8
  switch i8 %2, label %5 [
    i8 52, label %16
    i8 68, label %3
    i8 84, label %4
  ]

3:                                                ; preds = %0
  br label %16

4:                                                ; preds = %0
  br label %16

5:                                                ; preds = %0
  %6 = and i32 %1, -16777216
  %7 = icmp eq i32 %6, 855638016
  %8 = and i32 %1, -1048576
  %9 = icmp eq i32 %8, 860880896
  %10 = or i1 %7, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = icmp eq i32 %6, 117440512
  %13 = select i1 %12, ptr @.str.53, ptr @.str.54
  %14 = icmp eq i32 %6, 1124073472
  %15 = select i1 %14, ptr @.str.52, ptr %13
  br label %16

16:                                               ; preds = %11, %5, %4, %3, %0
  %17 = phi ptr [ @.str.50, %4 ], [ @.str.49, %3 ], [ @.str.48, %0 ], [ @.str.51, %5 ], [ %15, %11 ]
  %18 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull %17) #10
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = load i32, ptr @omap_type.val, align 4
  %5 = icmp ult i32 %4, 1792
  br i1 %5, label %26, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr @omap_revision, align 4
  %8 = and i32 %7, -16777216
  switch i32 %8, label %9 [
    i32 -2130706432, label %21
    i32 855638016, label %21
    i32 1124073472, label %21
  ]

9:                                                ; preds = %6
  %10 = trunc i32 %7 to i8
  switch i8 %10, label %12 [
    i8 52, label %21
    i8 68, label %11
    i8 84, label %14
  ]

11:                                               ; preds = %9
  br label %21

12:                                               ; preds = %9
  %13 = icmp eq i32 %8, 117440512
  br i1 %13, label %14, label %18

14:                                               ; preds = %12, %9
  %15 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 308) #10
  %16 = lshr i32 %15, 6
  %17 = and i32 %16, 7
  store i32 %17, ptr @omap_type.val, align 4
  br label %26

18:                                               ; preds = %12
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  %20 = load i32, ptr @omap_type.val, align 4
  br label %26

21:                                               ; preds = %11, %9, %6, %6, %6
  %22 = phi i16 [ 708, %11 ], [ 64, %6 ], [ 64, %6 ], [ 64, %6 ], [ 752, %9 ]
  %23 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext %22) #10
  %24 = lshr i32 %23, 8
  %25 = and i32 %24, 7
  store i32 %25, ptr @omap_type.val, align 4
  br label %26

26:                                               ; preds = %21, %18, %14, %3
  %27 = phi i32 [ %4, %3 ], [ %25, %21 ], [ %20, %18 ], [ %17, %14 ]
  %28 = getelementptr [5 x ptr], ptr @omap_types, i32 0, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.56, ptr noundef %29)
  ret i32 %30
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { cold }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }

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
!8 = !{i64 2892364}
!9 = !{!"auto-init"}
!10 = !{i64 2151335366}
!11 = !{i64 2154339697, i64 2154340186, i64 2154339734, i64 2154339790, i64 2154339824, i64 2154339848, i64 2154339889, i64 2154339910, i64 2154339938, i64 2154339972}
!12 = !{i64 2154340683, i64 2154341172, i64 2154340720, i64 2154340776, i64 2154340810, i64 2154340834, i64 2154340875, i64 2154340896, i64 2154340924, i64 2154340958}
