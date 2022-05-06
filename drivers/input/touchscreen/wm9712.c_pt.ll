; ModuleID = '/llk/IR/drivers/input/touchscreen/wm9712.c_pt.bc'
source_filename = "../drivers/input/touchscreen/wm9712.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm9712_codec:\09\09\09\09\09"
module asm "\09.asciz \09\22wm9712_codec\22\09\09\09\09\09"
module asm "__kstrtabns_wm9712_codec:\09\09\09\09\09"
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

@__param_str_rpu = internal constant [4 x i8] c"rpu\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@rpu = internal global i32 8, align 4
@__param_rpu = internal constant %struct.kernel_param { ptr @__param_str_rpu, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.60 { ptr @rpu } }, section "__param", align 4
@__UNIQUE_ID_rputype225 = internal constant [17 x i8] c"parmtype=rpu:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rpu226 = internal constant [55 x i8] c"parm=rpu:Set internal pull up resistor for pen detect.\00", section ".modinfo", align 1
@__param_str_pil = internal constant [4 x i8] c"pil\00", align 1
@pil = internal global i32 0, align 4
@__param_pil = internal constant %struct.kernel_param { ptr @__param_str_pil, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.60 { ptr @pil } }, section "__param", align 4
@__UNIQUE_ID_piltype227 = internal constant [17 x i8] c"parmtype=pil:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pil228 = internal constant [52 x i8] c"parm=pil:Set current used for pressure measurement.\00", section ".modinfo", align 1
@__param_str_pressure = internal constant [9 x i8] c"pressure\00", align 1
@pressure = internal global i32 192, align 4
@__param_pressure = internal constant %struct.kernel_param { ptr @__param_str_pressure, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.60 { ptr @pressure } }, section "__param", align 4
@__UNIQUE_ID_pressuretype229 = internal constant [22 x i8] c"parmtype=pressure:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pressure230 = internal constant [54 x i8] c"parm=pressure:Set threshold for pressure measurement.\00", section ".modinfo", align 1
@__param_str_delay = internal constant [6 x i8] c"delay\00", align 1
@delay = internal global i32 3, align 4
@__param_delay = internal constant %struct.kernel_param { ptr @__param_str_delay, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.60 { ptr @delay } }, section "__param", align 4
@__UNIQUE_ID_delaytype231 = internal constant [19 x i8] c"parmtype=delay:int\00", section ".modinfo", align 1
@__UNIQUE_ID_delay232 = internal constant [33 x i8] c"parm=delay:Set adc sample delay.\00", section ".modinfo", align 1
@__param_str_five_wire = internal constant [10 x i8] c"five_wire\00", align 1
@five_wire = internal global i32 0, align 4
@__param_five_wire = internal constant %struct.kernel_param { ptr @__param_str_five_wire, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.60 { ptr @five_wire } }, section "__param", align 4
@__UNIQUE_ID_five_wiretype233 = internal constant [23 x i8] c"parmtype=five_wire:int\00", section ".modinfo", align 1
@__UNIQUE_ID_five_wire234 = internal constant [53 x i8] c"parm=five_wire:Set to '1' to use 5-wire touchscreen.\00", section ".modinfo", align 1
@__param_str_mask = internal constant [5 x i8] c"mask\00", align 1
@mask = internal global i32 0, align 4
@__param_mask = internal constant %struct.kernel_param { ptr @__param_str_mask, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.60 { ptr @mask } }, section "__param", align 4
@__UNIQUE_ID_masktype235 = internal constant [18 x i8] c"parmtype=mask:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mask236 = internal constant [33 x i8] c"parm=mask:Set adc mask function.\00", section ".modinfo", align 1
@__param_str_coord = internal constant [6 x i8] c"coord\00", align 1
@coord = internal global i32 0, align 4
@__param_coord = internal constant %struct.kernel_param { ptr @__param_str_coord, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.60 { ptr @coord } }, section "__param", align 4
@__UNIQUE_ID_coordtype237 = internal constant [19 x i8] c"parmtype=coord:int\00", section ".modinfo", align 1
@__UNIQUE_ID_coord238 = internal constant [35 x i8] c"parm=coord:Polling coordinate mode\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"wm9712\00", align 1
@wm9712_codec = dso_local global %struct.wm97xx_codec_drv { i16 19474, ptr @.str, ptr @wm9712_poll_sample, ptr @wm9712_poll_touch, ptr @wm9712_acc_enable, ptr @wm9712_phy_init, ptr @wm9712_dig_enable, ptr @wm9712_dig_restore, ptr @wm9712_aux_prepare }, align 4
@__kstrtab_wm9712_codec = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm9712_codec = external dso_local constant [0 x i8], align 1
@__ksymtab_wm9712_codec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm9712_codec to i32), ptr @__kstrtab_wm9712_codec, ptr @__kstrtabns_wm9712_codec }, section "___ksymtab_gpl+wm9712_codec", align 4
@__UNIQUE_ID_author239 = internal constant [43 x i8] c"author=Liam Girdwood <lrg@slimlogic.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [39 x i8] c"description=WM9712 Touch Screen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@delay_table = internal unnamed_addr constant [16 x i32] [i32 21, i32 42, i32 84, i32 167, i32 333, i32 667, i32 1000, i32 1333, i32 2000, i32 2667, i32 3333, i32 4000, i32 4667, i32 5333, i32 6000, i32 0], align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"pressure measurement is not supported in 5-wire mode\0A\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_coord238, ptr @__UNIQUE_ID_coordtype237, ptr @__UNIQUE_ID_delay232, ptr @__UNIQUE_ID_delaytype231, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_five_wire234, ptr @__UNIQUE_ID_five_wiretype233, ptr @__UNIQUE_ID_license241, ptr @__UNIQUE_ID_mask236, ptr @__UNIQUE_ID_masktype235, ptr @__UNIQUE_ID_pil228, ptr @__UNIQUE_ID_piltype227, ptr @__UNIQUE_ID_pressure230, ptr @__UNIQUE_ID_pressuretype229, ptr @__UNIQUE_ID_rpu226, ptr @__UNIQUE_ID_rputype225, ptr @__ksymtab_wm9712_codec, ptr @__param_coord, ptr @__param_delay, ptr @__param_five_wire, ptr @__param_mask, ptr @__param_pil, ptr @__param_pressure, ptr @__param_rpu], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm9712_poll_sample(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
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
  %14 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 122) #4
  %15 = and i32 %14, 32768
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %92, label %17

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
  tail call void %26(i32 noundef %1) #4
  br label %29

29:                                               ; preds = %28, %24, %20
  %30 = and i32 %1, 28672
  %31 = load i32, ptr @delay, align 4
  %32 = shl i32 %31, 4
  %33 = and i32 %32, 240
  %34 = or i32 %33, %30
  %35 = trunc i32 %34 to i16
  %36 = or i16 %35, -32768
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 118, i16 noundef zeroext %36) #4
  %37 = load i32, ptr @delay, align 4
  %38 = getelementptr [16 x i32], ptr @delay_table, i32 0, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 63
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #4
  %42 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 118) #4
  %43 = and i32 %42, 32768
  %44 = icmp ne i32 %43, 0
  %45 = icmp ne i32 %5, 0
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %56

47:                                               ; preds = %47, %29
  %48 = phi i32 [ %50, %47 ], [ %5, %29 ]
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 4509708) #4
  %50 = add i32 %48, -1
  %51 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 118) #4
  %52 = and i32 %51, 32768
  %53 = icmp ne i32 %52, 0
  %54 = icmp ne i32 %50, 0
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %47, label %56

56:                                               ; preds = %47, %29
  %57 = phi i32 [ %5, %29 ], [ %50, %47 ]
  %58 = icmp slt i32 %57, 1
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = getelementptr [3 x i16], ptr %0, i32 0, i32 2
  %61 = load i16, ptr %60, align 4
  %62 = and i16 %61, 2048
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %92, label %88

64:                                               ; preds = %56
  %65 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 122) #4
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
  tail call void %70(i32 noundef %1) #4
  %73 = load i32, ptr %2, align 4
  br label %74

74:                                               ; preds = %72, %68, %64
  %75 = phi i32 [ %73, %72 ], [ %65, %68 ], [ %65, %64 ]
  %76 = xor i32 %75, %1
  %77 = and i32 %76, 28672
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = xor i1 %7, true
  %81 = and i32 %75, 32768
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 122) #4
  store i32 %85, ptr %2, align 4
  %86 = and i32 %85, 32768
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84, %59
  %89 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 21
  %90 = load i8, ptr %89, align 4
  %91 = and i8 %90, -5
  store i8 %91, ptr %89, align 4
  br label %92

92:                                               ; preds = %88, %84, %79, %74, %59, %13
  %93 = phi i32 [ 4, %59 ], [ 1, %74 ], [ 2, %84 ], [ 2, %79 ], [ 4, %13 ], [ 4, %88 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm9712_poll_touch(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = load i32, ptr @coord, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %103, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @delay, align 4
  %7 = mul i32 %6, 5
  %8 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 21
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 122) #4
  %14 = and i32 %13, 32768
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %122, label %16

16:                                               ; preds = %12
  %17 = load i8, ptr %8, align 4
  %18 = or i8 %17, 4
  store i8 %18, ptr %8, align 4
  br label %19

19:                                               ; preds = %16, %5
  %20 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %21, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void %25(i32 noundef 12288) #4
  br label %28

28:                                               ; preds = %27, %23, %19
  %29 = load i32, ptr @delay, align 4
  %30 = trunc i32 %29 to i16
  %31 = shl i16 %30, 4
  %32 = and i16 %31, 240
  %33 = or i16 %32, -30720
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 118, i16 noundef zeroext %33) #4
  %34 = load i32, ptr @delay, align 4
  %35 = getelementptr [16 x i32], ptr @delay_table, i32 0, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 63
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %38(i32 noundef %37) #4
  %39 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 122) #4
  store i32 %39, ptr %1, align 4
  %40 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 118) #4
  %41 = and i32 %40, 32768
  %42 = icmp ne i32 %41, 0
  %43 = icmp ne i32 %7, 0
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %54

45:                                               ; preds = %45, %28
  %46 = phi i32 [ %48, %45 ], [ %7, %28 ]
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 4509708) #4
  %48 = add i32 %46, -1
  %49 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 118) #4
  %50 = and i32 %49, 32768
  %51 = icmp ne i32 %50, 0
  %52 = icmp ne i32 %48, 0
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %45, label %54

54:                                               ; preds = %45, %28
  %55 = phi i32 [ %7, %28 ], [ %48, %45 ]
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = getelementptr [3 x i16], ptr %0, i32 0, i32 2
  %59 = load i16, ptr %58, align 4
  %60 = and i16 %59, 2048
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %122, label %100

62:                                               ; preds = %54
  %63 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 122) #4
  %64 = getelementptr inbounds %struct.wm97xx_data, ptr %1, i32 0, i32 1
  store i32 %63, ptr %64, align 4
  %65 = load i32, ptr @pil, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 122) #4
  br label %69

69:                                               ; preds = %67, %62
  %70 = phi i32 [ %68, %67 ], [ 45248, %62 ]
  %71 = getelementptr inbounds %struct.wm97xx_data, ptr %1, i32 0, i32 2
  store i32 %70, ptr %71, align 4
  %72 = load ptr, ptr %20, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %72, i32 0, i32 8
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  tail call void %76(i32 noundef 12288) #4
  br label %79

79:                                               ; preds = %78, %74, %69
  %80 = load i32, ptr %1, align 4
  %81 = and i32 %80, 4096
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %122, label %83

83:                                               ; preds = %79
  %84 = load i32, ptr %64, align 4
  %85 = and i32 %84, 8192
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %122, label %87

87:                                               ; preds = %83
  %88 = load i32, ptr @pil, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load i32, ptr %71, align 4
  %92 = and i32 %91, 12288
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %122, label %94

94:                                               ; preds = %90, %87
  %95 = and i32 %80, 32768
  %96 = icmp eq i32 %95, 0
  %97 = and i32 %84, 32768
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %96, i1 true, i1 %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %94, %57
  %101 = load i8, ptr %8, align 4
  %102 = and i8 %101, -5
  store i8 %102, ptr %8, align 4
  br label %122

103:                                              ; preds = %2
  %104 = tail call i32 @wm9712_poll_sample(ptr noundef %0, i32 noundef 36864, ptr noundef %1)
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %122

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.wm97xx_data, ptr %1, i32 0, i32 1
  %108 = tail call i32 @wm9712_poll_sample(ptr noundef %0, i32 noundef 40960, ptr noundef %107)
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = load i32, ptr @pil, align 4
  %112 = icmp eq i32 %111, 0
  %113 = load i32, ptr @five_wire, align 4
  %114 = icmp ne i32 %113, 0
  %115 = select i1 %112, i1 true, i1 %114
  %116 = getelementptr inbounds %struct.wm97xx_data, ptr %1, i32 0, i32 2
  br i1 %115, label %120, label %117

117:                                              ; preds = %110
  %118 = tail call i32 @wm9712_poll_sample(ptr noundef %0, i32 noundef 45056, ptr noundef %116)
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %121, label %122

120:                                              ; preds = %110
  store i32 45248, ptr %116, align 4
  br label %121

121:                                              ; preds = %120, %117, %94
  br label %122

122:                                              ; preds = %121, %117, %106, %103, %100, %90, %83, %79, %57, %12
  %123 = phi i32 [ 2, %121 ], [ %104, %103 ], [ %108, %106 ], [ %118, %117 ], [ 4, %100 ], [ 4, %12 ], [ 0, %83 ], [ 0, %79 ], [ 0, %90 ], [ 4, %57 ]
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm9712_acc_enable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr [3 x i16], ptr %0, i32 0, i32 1
  %4 = load i16, ptr %3, align 2
  %5 = getelementptr [3 x i16], ptr %0, i32 0, i32 2
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = tail call i32 %12(ptr noundef %0) #4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %57, label %17

17:                                               ; preds = %14, %8
  %18 = and i16 %4, -32768
  %19 = load i32, ptr @delay, align 4
  %20 = shl i32 %19, 4
  %21 = and i32 %20, 240
  %22 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 19
  %23 = load i16, ptr %22, align 4
  %24 = add i16 %23, 3
  %25 = and i16 %24, 7
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 20
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = and i32 %30, 768
  %32 = and i32 %29, 4
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 0, i32 240
  %35 = or i32 %21, %26
  %36 = or i32 %35, %31
  %37 = or i32 %36, %34
  %38 = trunc i32 %37 to i16
  %39 = load i32, ptr @pil, align 4
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i16 3080, i16 15368
  %42 = or i16 %41, %18
  %43 = or i16 %42, %38
  %44 = or i16 %6, 2048
  br label %54

45:                                               ; preds = %2
  %46 = and i16 %4, -3081
  %47 = and i16 %6, -2049
  %48 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 11
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %49, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  tail call void %51(ptr noundef %0) #4
  br label %54

54:                                               ; preds = %53, %45, %17
  %55 = phi i16 [ %43, %17 ], [ %46, %53 ], [ %46, %45 ]
  %56 = phi i16 [ %44, %17 ], [ %47, %53 ], [ %47, %45 ]
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 118, i16 noundef zeroext %55) #4
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 120, i16 noundef zeroext %56) #4
  br label %57

57:                                               ; preds = %54, %14
  %58 = phi i32 [ 0, %54 ], [ %15, %14 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm9712_phy_init(ptr noundef %0) #0 {
  %2 = load i32, ptr @rpu, align 4
  %3 = icmp eq i32 %2, 0
  %4 = trunc i32 %2 to i16
  %5 = and i16 %4, 63
  %6 = or i16 %5, 8192
  %7 = select i1 %3, i16 8193, i16 %6
  %8 = load i32, ptr @five_wire, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = or i16 %7, 4096
  %12 = load i32, ptr @pil, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.1) #5
  store i32 0, ptr @pil, align 4
  br label %20

17:                                               ; preds = %1
  %18 = load i32, ptr @pil, align 4
  %19 = or i16 %7, 256
  switch i32 %18, label %22 [
    i32 2, label %23
    i32 0, label %20
  ]

20:                                               ; preds = %17, %14, %10
  %21 = phi i16 [ %11, %14 ], [ %11, %10 ], [ %7, %17 ]
  store i32 0, ptr @pressure, align 4
  br label %23

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %20, %17
  %24 = phi i16 [ %21, %20 ], [ %19, %17 ], [ %7, %22 ]
  %25 = load i32, ptr @delay, align 4
  %26 = icmp ugt i32 %25, 15
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 4, ptr @delay, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ %25, %23 ], [ 4, %27 ]
  %30 = load i32, ptr @mask, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 86) #4
  %34 = trunc i32 %33 to i16
  %35 = or i16 %34, 16
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 86, i16 noundef zeroext %35) #4
  %36 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 76) #4
  %37 = trunc i32 %36 to i16
  %38 = or i16 %37, 16
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 76, i16 noundef zeroext %38) #4
  br label %39

39:                                               ; preds = %32, %28
  %40 = trunc i32 %30 to i16
  %41 = shl i16 %40, 6
  %42 = and i16 %41, 192
  %43 = or i16 %42, %24
  %44 = load i32, ptr @coord, align 4
  %45 = icmp eq i32 %44, 0
  %46 = or i16 %43, 512
  %47 = select i1 %45, i16 %43, i16 %46
  %48 = trunc i32 %29 to i16
  %49 = shl nuw nsw i16 %48, 4
  %50 = and i16 %49, 240
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 118, i16 noundef zeroext %50) #4
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 120, i16 noundef zeroext %47) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm9712_dig_enable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr [3 x i16], ptr %0, i32 0, i32 2
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = or i16 %4, -16384
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 120, i16 noundef zeroext %7) #4
  %8 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 122) #4
  br label %11

9:                                                ; preds = %2
  %10 = and i16 %4, 16383
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 120, i16 noundef zeroext %10) #4
  br label %11

11:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm9712_dig_restore(ptr noundef %0) #0 {
  %2 = getelementptr %struct.wm97xx, ptr %0, i32 0, i32 4, i32 1
  %3 = load i16, ptr %2, align 2
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 118, i16 noundef zeroext %3) #4
  %4 = getelementptr %struct.wm97xx, ptr %0, i32 0, i32 4, i32 2
  %5 = load i16, ptr %4, align 2
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 120, i16 noundef zeroext %5) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm9712_aux_prepare(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %2, ptr noundef align 4 dereferenceable(6) %0, i32 6, i1 false)
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 118, i16 noundef zeroext 0) #4
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 120, i16 noundef zeroext -16384) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm97xx_reg_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wm97xx_reg_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
