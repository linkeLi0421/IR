; ModuleID = '/llk/IR/drivers/input/touchscreen/wm9713.c_pt.bc'
source_filename = "../drivers/input/touchscreen/wm9713.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm9713_codec:\09\09\09\09\09"
module asm "\09.asciz \09\22wm9713_codec\22\09\09\09\09\09"
module asm "__kstrtabns_wm9713_codec:\09\09\09\09\09"
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
@delay = internal global i32 4, align 4
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
@.str = private unnamed_addr constant [7 x i8] c"wm9713\00", align 1
@wm9713_codec = dso_local global %struct.wm97xx_codec_drv { i16 19475, ptr @.str, ptr @wm9713_poll_sample, ptr @wm9713_poll_touch, ptr @wm9713_acc_enable, ptr @wm9713_phy_init, ptr @wm9713_dig_enable, ptr @wm9713_dig_restore, ptr @wm9713_aux_prepare }, align 4
@__kstrtab_wm9713_codec = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm9713_codec = external dso_local constant [0 x i8], align 1
@__ksymtab_wm9713_codec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm9713_codec to i32), ptr @__kstrtab_wm9713_codec, ptr @__kstrtabns_wm9713_codec }, section "___ksymtab_gpl+wm9713_codec", align 4
@__UNIQUE_ID_author239 = internal constant [43 x i8] c"author=Liam Girdwood <lrg@slimlogic.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [39 x i8] c"description=WM9713 Touch Screen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@delay_table = internal unnamed_addr constant [16 x i32] [i32 21, i32 42, i32 84, i32 167, i32 333, i32 667, i32 1000, i32 1333, i32 2000, i32 2667, i32 3333, i32 4000, i32 4667, i32 5333, i32 6000, i32 0], align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"setting pen detect pull-up to %d Ohms\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"setting 5-wire touchscreen mode.\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"Pressure measurement not supported in 5 wire mode, disabling\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"setting pressure measurement current to 400uA.\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"setting pressure measurement current to 200uA.\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"supplied delay out of range.\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"setting adc sample delay to %d u Secs.\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_coord238, ptr @__UNIQUE_ID_coordtype237, ptr @__UNIQUE_ID_delay232, ptr @__UNIQUE_ID_delaytype231, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_five_wire234, ptr @__UNIQUE_ID_five_wiretype233, ptr @__UNIQUE_ID_license241, ptr @__UNIQUE_ID_mask236, ptr @__UNIQUE_ID_masktype235, ptr @__UNIQUE_ID_pil228, ptr @__UNIQUE_ID_piltype227, ptr @__UNIQUE_ID_pressure230, ptr @__UNIQUE_ID_pressuretype229, ptr @__UNIQUE_ID_rpu226, ptr @__UNIQUE_ID_rputype225, ptr @__ksymtab_wm9713_codec, ptr @__param_coord, ptr @__param_delay, ptr @__param_five_wire, ptr @__param_mask, ptr @__param_pil, ptr @__param_pressure, ptr @__param_rpu], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm9713_poll_sample(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
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
  br i1 %16, label %89, label %17

17:                                               ; preds = %13
  %18 = load i8, ptr %9, align 4
  %19 = or i8 %18, 4
  store i8 %19, ptr %9, align 4
  br label %20

20:                                               ; preds = %17, %8, %3
  %21 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 116) #4
  %22 = and i32 %21, 64769
  %23 = lshr i32 %1, 12
  %24 = and i32 %23, 7
  %25 = shl nuw nsw i32 1, %24
  %26 = or i32 %22, %25
  %27 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %28, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void %32(i32 noundef %1) #4
  br label %35

35:                                               ; preds = %34, %30, %20
  %36 = trunc i32 %26 to i16
  %37 = or i16 %36, 512
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 116, i16 noundef zeroext %37) #4
  %38 = load i32, ptr @delay, align 4
  %39 = getelementptr [16 x i32], ptr @delay_table, i32 0, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 63
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %42(i32 noundef %41) #4
  %43 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 116) #4
  %44 = and i32 %43, 512
  %45 = icmp ne i32 %44, 0
  %46 = icmp ne i32 %5, 0
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %48, label %57

48:                                               ; preds = %48, %35
  %49 = phi i32 [ %51, %48 ], [ %5, %35 ]
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 4509708) #4
  %51 = add i32 %49, -1
  %52 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 116) #4
  %53 = and i32 %52, 512
  %54 = icmp ne i32 %53, 0
  %55 = icmp ne i32 %51, 0
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %48, label %57

57:                                               ; preds = %48, %35
  %58 = phi i32 [ %5, %35 ], [ %51, %48 ]
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = getelementptr [3 x i16], ptr %0, i32 0, i32 2
  %62 = load i16, ptr %61, align 4
  %63 = and i16 %62, 2048
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %89, label %85

65:                                               ; preds = %57
  %66 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 122) #4
  store i32 %66, ptr %2, align 4
  %67 = load ptr, ptr %27, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %67, i32 0, i32 8
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  tail call void %71(i32 noundef %1) #4
  %74 = load i32, ptr %2, align 4
  br label %75

75:                                               ; preds = %73, %69, %65
  %76 = phi i32 [ %74, %73 ], [ %66, %69 ], [ %66, %65 ]
  %77 = xor i32 %76, %1
  %78 = and i32 %77, 28672
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = xor i1 %7, true
  %82 = and i32 %76, 32768
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %89

85:                                               ; preds = %80, %60
  %86 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 21
  %87 = load i8, ptr %86, align 4
  %88 = and i8 %87, -5
  store i8 %88, ptr %86, align 4
  br label %89

89:                                               ; preds = %85, %80, %75, %60, %13
  %90 = phi i32 [ 4, %60 ], [ 4, %75 ], [ 2, %80 ], [ 4, %13 ], [ 4, %85 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm9713_poll_touch(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = load i32, ptr @coord, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %106, label %5

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
  %20 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 116) #4
  %21 = trunc i32 %20 to i16
  %22 = and i16 %21, -255
  %23 = load i32, ptr @pil, align 4
  %24 = icmp eq i32 %23, 0
  %25 = or i16 %22, 8
  %26 = select i1 %24, i16 %22, i16 %25
  %27 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %28, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void %32(i32 noundef 12288) #4
  br label %35

35:                                               ; preds = %34, %30, %19
  %36 = or i16 %26, 513
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 116, i16 noundef zeroext %36) #4
  %37 = load i32, ptr @delay, align 4
  %38 = getelementptr [16 x i32], ptr @delay_table, i32 0, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 63
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #4
  %42 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 122) #4
  store i32 %42, ptr %1, align 4
  %43 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 116) #4
  %44 = and i32 %43, 512
  %45 = icmp ne i32 %44, 0
  %46 = icmp ne i32 %7, 0
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %48, label %57

48:                                               ; preds = %48, %35
  %49 = phi i32 [ %51, %48 ], [ %7, %35 ]
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 4509708) #4
  %51 = add i32 %49, -1
  %52 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 116) #4
  %53 = and i32 %52, 512
  %54 = icmp ne i32 %53, 0
  %55 = icmp ne i32 %51, 0
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %48, label %57

57:                                               ; preds = %48, %35
  %58 = phi i32 [ %7, %35 ], [ %51, %48 ]
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = getelementptr [3 x i16], ptr %0, i32 0, i32 2
  %62 = load i16, ptr %61, align 4
  %63 = and i16 %62, 2048
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %122, label %103

65:                                               ; preds = %57
  %66 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 122) #4
  %67 = getelementptr inbounds %struct.wm97xx_data, ptr %1, i32 0, i32 1
  store i32 %66, ptr %67, align 4
  %68 = load i32, ptr @pil, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 122) #4
  br label %72

72:                                               ; preds = %70, %65
  %73 = phi i32 [ %71, %70 ], [ 45248, %65 ]
  %74 = getelementptr inbounds %struct.wm97xx_data, ptr %1, i32 0, i32 2
  store i32 %73, ptr %74, align 4
  %75 = load ptr, ptr %27, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %75, i32 0, i32 8
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  tail call void %79(i32 noundef 12288) #4
  br label %82

82:                                               ; preds = %81, %77, %72
  %83 = load i32, ptr %1, align 4
  %84 = and i32 %83, 4096
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %122, label %86

86:                                               ; preds = %82
  %87 = load i32, ptr %67, align 4
  %88 = and i32 %87, 8192
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %122, label %90

90:                                               ; preds = %86
  %91 = load i32, ptr @pil, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load i32, ptr %74, align 4
  %95 = and i32 %94, 12288
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %122, label %97

97:                                               ; preds = %93, %90
  %98 = and i32 %83, 32768
  %99 = icmp eq i32 %98, 0
  %100 = and i32 %87, 32768
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %99, i1 true, i1 %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %97, %60
  %104 = load i8, ptr %8, align 4
  %105 = and i8 %104, -5
  store i8 %105, ptr %8, align 4
  br label %122

106:                                              ; preds = %2
  %107 = tail call i32 @wm9713_poll_sample(ptr noundef %0, i32 noundef 36864, ptr noundef %1)
  %108 = icmp eq i32 %107, 2
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.wm97xx_data, ptr %1, i32 0, i32 1
  %111 = tail call i32 @wm9713_poll_sample(ptr noundef %0, i32 noundef 40960, ptr noundef %110)
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = load i32, ptr @pil, align 4
  %115 = icmp eq i32 %114, 0
  %116 = getelementptr inbounds %struct.wm97xx_data, ptr %1, i32 0, i32 2
  br i1 %115, label %120, label %117

117:                                              ; preds = %113
  %118 = tail call i32 @wm9713_poll_sample(ptr noundef %0, i32 noundef 45056, ptr noundef %116)
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %121, label %122

120:                                              ; preds = %113
  store i32 45248, ptr %116, align 4
  br label %121

121:                                              ; preds = %120, %117, %97
  br label %122

122:                                              ; preds = %121, %117, %109, %106, %103, %93, %86, %82, %60, %12
  %123 = phi i32 [ 2, %121 ], [ %107, %106 ], [ %111, %109 ], [ %118, %117 ], [ 4, %103 ], [ 4, %12 ], [ 0, %86 ], [ 0, %82 ], [ 0, %93 ], [ 4, %60 ]
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm9713_acc_enable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load i16, ptr %0, align 4
  %4 = getelementptr [3 x i16], ptr %0, i32 0, i32 1
  %5 = load i16, ptr %4, align 2
  %6 = getelementptr [3 x i16], ptr %0, i32 0, i32 2
  %7 = load i16, ptr %6, align 4
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %49, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = tail call i32 %13(ptr noundef %0) #4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %64, label %18

18:                                               ; preds = %15, %9
  %19 = phi i32 [ %16, %15 ], [ 0, %9 ]
  %20 = and i16 %3, -512
  %21 = load i32, ptr @pil, align 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i16 263, i16 271
  %24 = or i16 %23, %20
  %25 = and i16 %5, -1024
  %26 = load i32, ptr @delay, align 4
  %27 = shl i32 %26, 4
  %28 = and i32 %27, 240
  %29 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 19
  %30 = load i16, ptr %29, align 4
  %31 = add i16 %30, 3
  %32 = and i16 %31, 7
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 20
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = shl nuw nsw i32 %36, 8
  %38 = and i32 %37, 768
  %39 = and i32 %36, 4
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 0, i32 240
  %42 = or i32 %28, %33
  %43 = or i32 %42, %38
  %44 = or i32 %43, %41
  %45 = trunc i32 %44 to i16
  %46 = or i16 %25, %45
  %47 = or i16 %46, 8
  %48 = or i16 %7, 2048
  br label %59

49:                                               ; preds = %2
  %50 = and i16 %3, -258
  %51 = and i16 %5, -9
  %52 = and i16 %7, -2049
  %53 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 11
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %54, i32 0, i32 4
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  tail call void %56(ptr noundef %0) #4
  br label %59

59:                                               ; preds = %58, %49, %18
  %60 = phi i16 [ %24, %18 ], [ %50, %58 ], [ %50, %49 ]
  %61 = phi i16 [ %47, %18 ], [ %51, %58 ], [ %51, %49 ]
  %62 = phi i16 [ %48, %18 ], [ %52, %58 ], [ %52, %49 ]
  %63 = phi i32 [ %19, %18 ], [ 0, %58 ], [ 0, %49 ]
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 116, i16 noundef zeroext %60) #4
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 118, i16 noundef zeroext %61) #4
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 120, i16 noundef zeroext %62) #4
  br label %64

64:                                               ; preds = %59, %15
  %65 = phi i32 [ %63, %59 ], [ %16, %15 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm9713_phy_init(ptr noundef %0) #0 {
  %2 = load i32, ptr @rpu, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = trunc i32 %2 to i16
  %6 = and i16 %5, 63
  %7 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = sdiv i32 64000, %2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.1, i32 noundef %9) #5
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi i16 [ %6, %4 ], [ 1, %1 ]
  %12 = load i32, ptr @five_wire, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = or i16 %11, 4096
  %16 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.2) #5
  %18 = load i32, ptr @pil, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.3) #5
  store i32 0, ptr @pil, align 4
  br label %33

22:                                               ; preds = %10
  %23 = load i32, ptr @pil, align 4
  switch i32 %23, label %26 [
    i32 2, label %24
    i32 0, label %33
  ]

24:                                               ; preds = %22
  %25 = or i16 %11, 256
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi ptr [ @.str.4, %24 ], [ @.str.5, %22 ]
  %28 = phi i16 [ %25, %24 ], [ %11, %22 ]
  %29 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull %27) #5
  %31 = load i32, ptr @pil, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26, %22, %20, %14
  %34 = phi i16 [ %28, %26 ], [ %11, %22 ], [ %15, %20 ], [ %15, %14 ]
  store i32 0, ptr @pressure, align 4
  br label %35

35:                                               ; preds = %33, %26
  %36 = phi i16 [ %34, %33 ], [ %28, %26 ]
  %37 = load i32, ptr @delay, align 4
  %38 = icmp ugt i32 %37, 15
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.6) #5
  store i32 4, ptr @delay, align 4
  %42 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.7, i32 noundef 333) #5
  %43 = load i32, ptr @delay, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i32 [ %37, %35 ], [ %43, %39 ]
  %46 = load i32, ptr @mask, align 4
  %47 = trunc i32 %46 to i16
  %48 = shl i16 %47, 4
  %49 = and i16 %48, 48
  %50 = or i16 %49, %36
  %51 = load i32, ptr @coord, align 4
  %52 = icmp eq i32 %51, 0
  %53 = or i16 %50, 512
  %54 = select i1 %52, i16 %50, i16 %53
  %55 = trunc i32 %45 to i16
  %56 = shl i16 %55, 4
  %57 = and i16 %56, 240
  %58 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 90) #4
  %59 = trunc i32 %58 to i16
  %60 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 3
  store i16 %59, ptr %60, align 4
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 116, i16 noundef zeroext 0) #4
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 118, i16 noundef zeroext %57) #4
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 120, i16 noundef zeroext %54) #4
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 80, i16 noundef zeroext 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm9713_dig_enable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 60) #4
  %6 = trunc i32 %5 to i16
  %7 = and i16 %6, 32767
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 60, i16 noundef zeroext %7) #4
  %8 = getelementptr [3 x i16], ptr %0, i32 0, i32 2
  %9 = load i16, ptr %8, align 4
  %10 = or i16 %9, -16384
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 120, i16 noundef zeroext %10) #4
  %11 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 122) #4
  br label %19

12:                                               ; preds = %2
  %13 = getelementptr [3 x i16], ptr %0, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 16383
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 120, i16 noundef zeroext %15) #4
  %16 = tail call i32 @wm97xx_reg_read(ptr noundef %0, i16 noundef zeroext 60) #4
  %17 = trunc i32 %16 to i16
  %18 = or i16 %17, -32768
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 60, i16 noundef zeroext %18) #4
  br label %19

19:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm9713_dig_restore(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 2
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 116, i16 noundef zeroext %3) #4
  %4 = getelementptr %struct.wm97xx, ptr %0, i32 0, i32 4, i32 1
  %5 = load i16, ptr %4, align 2
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 118, i16 noundef zeroext %5) #4
  %6 = getelementptr %struct.wm97xx, ptr %0, i32 0, i32 4, i32 2
  %7 = load i16, ptr %6, align 2
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 120, i16 noundef zeroext %7) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm9713_aux_prepare(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %2, ptr noundef align 4 dereferenceable(6) %0, i32 6, i1 false)
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 116, i16 noundef zeroext 0) #4
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 118, i16 noundef zeroext 0) #4
  tail call void @wm97xx_reg_write(ptr noundef %0, i16 noundef zeroext 120, i16 noundef zeroext -16384) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm97xx_reg_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wm97xx_reg_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

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
