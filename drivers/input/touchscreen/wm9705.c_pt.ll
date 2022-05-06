; ModuleID = '/llk/IR/drivers/input/touchscreen/wm9705.c_pt.bc'
source_filename = "../drivers/input/touchscreen/wm9705.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm9705_codec:\09\09\09\09\09"
module asm "\09.asciz \09\22wm9705_codec\22\09\09\09\09\09"
module asm "__kstrtabns_wm9705_codec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.wm97xx_codec_drv = type { i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.wm97xx = type { [3 x i16], i16, [6 x i16], i16, [3 x i16], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.delayed_work, i32, i32, i32, ptr, %struct.work_struct, i16, i16, i8, i16, i16 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wm97xx_mach_ops = type { i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.wm97xx_data = type { i32, i32, i32 }

@__param_str_pil = internal constant [4 x i8] c"pil\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@pil = internal global i32 0, align 4
@__param_pil = internal constant %struct.kernel_param { ptr @__param_str_pil, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.60 { ptr @pil } }, section "__param", align 4
@__UNIQUE_ID_piltype225 = internal constant [17 x i8] c"parmtype=pil:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pil226 = internal constant [52 x i8] c"parm=pil:Set current used for pressure measurement.\00", section ".modinfo", align 1
@__param_str_pressure = internal constant [9 x i8] c"pressure\00", align 1
@pressure = internal global i32 192, align 4
@__param_pressure = internal constant %struct.kernel_param { ptr @__param_str_pressure, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.60 { ptr @pressure } }, section "__param", align 4
@__UNIQUE_ID_pressuretype227 = internal constant [22 x i8] c"parmtype=pressure:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pressure228 = internal constant [54 x i8] c"parm=pressure:Set threshold for pressure measurement.\00", section ".modinfo", align 1
@__param_str_delay = internal constant [6 x i8] c"delay\00", align 1
@delay = internal global i32 4, align 4
@__param_delay = internal constant %struct.kernel_param { ptr @__param_str_delay, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.60 { ptr @delay } }, section "__param", align 4
@__UNIQUE_ID_delaytype229 = internal constant [19 x i8] c"parmtype=delay:int\00", section ".modinfo", align 1
@__UNIQUE_ID_delay230 = internal constant [33 x i8] c"parm=delay:Set adc sample delay.\00", section ".modinfo", align 1
@__param_str_pdd = internal constant [4 x i8] c"pdd\00", align 1
@pdd = internal global i32 8, align 4
@__param_pdd = internal constant %struct.kernel_param { ptr @__param_str_pdd, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.60 { ptr @pdd } }, section "__param", align 4
@__UNIQUE_ID_pddtype231 = internal constant [17 x i8] c"parmtype=pdd:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pdd232 = internal constant [45 x i8] c"parm=pdd:Set pen detect comparator threshold\00", section ".modinfo", align 1
@__param_str_mask = internal constant [5 x i8] c"mask\00", align 1
@mask = internal global i32 0, align 4
@__param_mask = internal constant %struct.kernel_param { ptr @__param_str_mask, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.60 { ptr @mask } }, section "__param", align 4
@__UNIQUE_ID_masktype233 = internal constant [18 x i8] c"parmtype=mask:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mask234 = internal constant [33 x i8] c"parm=mask:Set adc mask function.\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"wm9705\00", align 1
@wm9705_codec = dso_local global %struct.wm97xx_codec_drv { i16 19461, ptr @.str, ptr @wm9705_poll_sample, ptr @wm9705_poll_touch, ptr @wm9705_acc_enable, ptr @wm9705_phy_init, ptr @wm9705_dig_enable, ptr @wm9705_dig_restore, ptr @wm9705_aux_prepare }, align 4
@__kstrtab_wm9705_codec = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm9705_codec = external dso_local constant [0 x i8], align 1
@__ksymtab_wm9705_codec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm9705_codec to i32), ptr @__kstrtab_wm9705_codec, ptr @__kstrtabns_wm9705_codec }, section "___ksymtab_gpl+wm9705_codec", align 4
@__UNIQUE_ID_author235 = internal constant [43 x i8] c"author=Liam Girdwood <lrg@slimlogic.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [39 x i8] c"description=WM9705 Touch Screen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@delay_table = internal unnamed_addr constant [16 x i32] [i32 21, i32 42, i32 84, i32 167, i32 333, i32 667, i32 1000, i32 1333, i32 2000, i32 2667, i32 3333, i32 4000, i32 4667, i32 5333, i32 6000, i32 0], align 4
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_delay230, ptr @__UNIQUE_ID_delaytype229, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_license237, ptr @__UNIQUE_ID_mask234, ptr @__UNIQUE_ID_masktype233, ptr @__UNIQUE_ID_pdd232, ptr @__UNIQUE_ID_pddtype231, ptr @__UNIQUE_ID_pil226, ptr @__UNIQUE_ID_piltype225, ptr @__UNIQUE_ID_pressure228, ptr @__UNIQUE_ID_pressuretype227, ptr @__ksymtab_wm9705_codec, ptr @__param_delay, ptr @__param_mask, ptr @__param_pdd, ptr @__param_pil, ptr @__param_pressure], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm9705_poll_sample(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = load i32, ptr @delay, align 4
  %5 = mul i32 %4, 5
  %6 = and i32 %1, 32768
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 21
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 122) #3
  %15 = and i32 %14, 32768
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %88, label %17

17:                                               ; preds = %13
  %18 = load i8, ptr %9, align 4
  %19 = or i8 %18, 4
  store i8 %19, ptr %9, align 4
  br label %20

20:                                               ; preds = %17, %8, %3
  %21 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %22, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void %26(i32 noundef %1) #3
  br label %29

29:                                               ; preds = %28, %24, %20
  %30 = and i32 %1, 28672
  %31 = load i32, ptr @delay, align 4
  %32 = shl i32 %31, 4
  %33 = and i32 %32, 240
  %34 = or i32 %33, %30
  %35 = trunc i32 %34 to i16
  %36 = or i16 %35, -32768
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 118, i16 noundef zeroext %36) #3
  %37 = load i32, ptr @delay, align 4
  %38 = getelementptr [16 x i32], ptr @delay_table, i32 0, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 63
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #3
  %42 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 118) #3
  %43 = and i32 %42, 32768
  %44 = icmp ne i32 %43, 0
  %45 = icmp ne i32 %5, 0
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %56

47:                                               ; preds = %47, %29
  %48 = phi i32 [ %50, %47 ], [ %5, %29 ]
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 4509708) #3
  %50 = add i32 %48, -1
  %51 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 118) #3
  %52 = and i32 %51, 32768
  %53 = icmp ne i32 %52, 0
  %54 = icmp ne i32 %50, 0
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %47, label %56

56:                                               ; preds = %47, %29
  %57 = phi i32 [ %5, %29 ], [ %50, %47 ]
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = getelementptr [3 x i16], ptr %0, i32 0, i32 2
  %61 = load i16, ptr %60, align 4
  %62 = and i16 %61, 4096
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %88, label %84

64:                                               ; preds = %56
  %65 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 122) #3
  store i32 %65, ptr %2, align 4
  %66 = load ptr, ptr %21, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %66, i32 0, i32 8
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  tail call void %70(i32 noundef %1) #3
  %73 = load i32, ptr %2, align 4
  br label %74

74:                                               ; preds = %72, %68, %64
  %75 = phi i32 [ %73, %72 ], [ %65, %68 ], [ %65, %64 ]
  %76 = xor i32 %75, %1
  %77 = and i32 %76, 28672
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = xor i1 %7, true
  %81 = and i32 %75, 32768
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %88

84:                                               ; preds = %79, %59
  %85 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 21
  %86 = load i8, ptr %85, align 4
  %87 = and i8 %86, -5
  store i8 %87, ptr %85, align 4
  br label %88

88:                                               ; preds = %84, %79, %74, %59, %13
  %89 = phi i32 [ 4, %59 ], [ 4, %74 ], [ 2, %79 ], [ 4, %13 ], [ 4, %84 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm9705_poll_touch(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call i32 @wm9705_poll_sample(ptr noundef %0, i32 noundef 36864, ptr noundef %1)
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wm97xx_data, ptr %1, i32 0, i32 1
  %7 = tail call i32 @wm9705_poll_sample(ptr noundef %0, i32 noundef 40960, ptr noundef %6)
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = load i32, ptr @pil, align 4
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.wm97xx_data, ptr %1, i32 0, i32 2
  br i1 %11, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @wm9705_poll_sample(ptr noundef %0, i32 noundef 45056, ptr noundef %12)
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %17, label %18

16:                                               ; preds = %9
  store i32 45248, ptr %12, align 4
  br label %17

17:                                               ; preds = %16, %13
  br label %18

18:                                               ; preds = %17, %13, %5, %2
  %19 = phi i32 [ 2, %17 ], [ %3, %2 ], [ %7, %5 ], [ %14, %13 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm9705_acc_enable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr [3 x i16], ptr %0, i32 0, i32 1
  %4 = load i16, ptr %3, align 2
  %5 = getelementptr [3 x i16], ptr %0, i32 0, i32 2
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = tail call i32 %12(ptr noundef %0) #3
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %59, label %17

17:                                               ; preds = %14, %8
  %18 = phi i32 [ %15, %14 ], [ 0, %8 ]
  %19 = and i16 %4, -32768
  %20 = load i32, ptr @delay, align 4
  %21 = shl i32 %20, 4
  %22 = and i32 %21, 240
  %23 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 19
  %24 = load i16, ptr %23, align 4
  %25 = add i16 %24, 3
  %26 = and i16 %25, 7
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 20
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = shl nuw nsw i32 %30, 8
  %32 = and i32 %31, 768
  %33 = and i32 %30, 4
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 0, i32 240
  %36 = or i32 %22, %27
  %37 = or i32 %36, %32
  %38 = or i32 %37, %35
  %39 = trunc i32 %38 to i16
  %40 = load i32, ptr @pil, align 4
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i16 3080, i16 15368
  %43 = or i16 %42, %19
  %44 = or i16 %43, %39
  %45 = or i16 %6, 4096
  br label %55

46:                                               ; preds = %2
  %47 = and i16 %4, -3081
  %48 = and i16 %6, -4097
  %49 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 11
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %50, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  tail call void %52(ptr noundef %0) #3
  br label %55

55:                                               ; preds = %54, %46, %17
  %56 = phi i16 [ %44, %17 ], [ %47, %54 ], [ %47, %46 ]
  %57 = phi i16 [ %45, %17 ], [ %48, %54 ], [ %48, %46 ]
  %58 = phi i32 [ %18, %17 ], [ 0, %54 ], [ 0, %46 ]
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 118, i16 noundef zeroext %56) #3
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 120, i16 noundef zeroext %57) #3
  br label %59

59:                                               ; preds = %55, %14
  %60 = phi i32 [ %58, %55 ], [ %15, %14 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm9705_phy_init(ptr noundef %0) #0 {
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 22, i16 noundef zeroext -32768) #3
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 20, i16 noundef zeroext -32768) #3
  %2 = load i32, ptr @pil, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i32 0, ptr @pressure, align 4
  br label %5

5:                                                ; preds = %4, %1
  %6 = load i32, ptr @delay, align 4
  %7 = icmp ugt i32 %6, 15
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32 4, ptr @delay, align 4
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi i32 [ 4, %8 ], [ %6, %5 ]
  %11 = icmp eq i32 %2, 2
  %12 = select i1 %11, i32 8320, i32 8192
  %13 = trunc i32 %10 to i16
  %14 = shl nuw nsw i16 %13, 4
  %15 = and i16 %14, 240
  %16 = load i32, ptr @pdd, align 4
  %17 = and i32 %16, 15
  %18 = or i32 %17, %12
  %19 = load i32, ptr @mask, align 4
  %20 = shl i32 %19, 4
  %21 = and i32 %20, 48
  %22 = or i32 %18, %21
  %23 = trunc i32 %22 to i16
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 118, i16 noundef zeroext %15) #3
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 120, i16 noundef zeroext %23) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm9705_dig_enable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr [3 x i16], ptr %0, i32 0, i32 2
  %5 = load i16, ptr %4, align 4
  br i1 %3, label %9, label %6

6:                                                ; preds = %2
  %7 = or i16 %5, -16384
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 120, i16 noundef zeroext %7) #3
  %8 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 122) #3
  br label %11

9:                                                ; preds = %2
  %10 = and i16 %5, 16383
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 120, i16 noundef zeroext %10) #3
  br label %11

11:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm9705_dig_restore(ptr noundef %0) #0 {
  %2 = getelementptr %struct.wm97xx, ptr %0, i32 0, i32 4, i32 1
  %3 = load i16, ptr %2, align 2
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 118, i16 noundef zeroext %3) #3
  %4 = getelementptr %struct.wm97xx, ptr %0, i32 0, i32 4, i32 2
  %5 = load i16, ptr %4, align 2
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 120, i16 noundef zeroext %5) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm9705_aux_prepare(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %2, ptr noundef align 4 dereferenceable(6) %0, i32 6, i1 false)
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 118, i16 noundef zeroext 0) #3
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 120, i16 noundef zeroext -16384) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm97xx_reg_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wm97xx_reg_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind }

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
