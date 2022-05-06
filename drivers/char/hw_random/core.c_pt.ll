; ModuleID = '/llk/IR/drivers/char/hw_random/core.c_pt.bc'
source_filename = "../drivers/char/hw_random/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hwrng_register:\09\09\09\09\09"
module asm "\09.asciz \09\22hwrng_register\22\09\09\09\09\09"
module asm "__kstrtabns_hwrng_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hwrng_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22hwrng_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_hwrng_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_hwrng_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_hwrng_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_hwrng_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_hwrng_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_hwrng_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_devm_hwrng_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.57 }
%union.anon.57 = type { ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.lock_class_key = type {}
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_current_quality = internal constant [25 x i8] c"rng_core.current_quality\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@current_quality = internal global i16 0, align 2
@__param_current_quality = internal constant %struct.kernel_param { ptr @__param_str_current_quality, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.57 { ptr @current_quality } }, section "__param", align 4
@__UNIQUE_ID_current_qualitytype206 = internal constant [41 x i8] c"rng_core.parmtype=current_quality:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_current_quality207 = internal constant [86 x i8] c"rng_core.parm=current_quality:current hwrng entropy estimation per 1024 bits of input\00", section ".modinfo", align 1
@__param_str_default_quality = internal constant [25 x i8] c"rng_core.default_quality\00", align 1
@default_quality = internal global i16 0, align 2
@__param_default_quality = internal constant %struct.kernel_param { ptr @__param_str_default_quality, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.57 { ptr @default_quality } }, section "__param", align 4
@__UNIQUE_ID_default_qualitytype208 = internal constant [41 x i8] c"rng_core.parmtype=default_quality:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_default_quality209 = internal constant [86 x i8] c"rng_core.parm=default_quality:default entropy content of hwrng per 1024 bits of input\00", section ".modinfo", align 1
@rng_miscdev = internal global %struct.miscdevice { i32 183, ptr @.str.1, ptr @rng_chrdev_ops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @rng_dev_groups, ptr @.str.2, i16 0 }, align 4
@rng_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rng_mutex, i64 12), ptr getelementptr (i8, ptr @rng_mutex, i64 12) } }, align 4
@rng_list = internal global %struct.list_head { ptr @rng_list, ptr @rng_list }, align 4
@current_rng = internal unnamed_addr global ptr null, align 4
@cur_rng_set_by_user = internal unnamed_addr global i1 false, align 4
@__kstrtab_hwrng_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_hwrng_register = external dso_local constant [0 x i8], align 1
@__ksymtab_hwrng_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hwrng_register to i32), ptr @__kstrtab_hwrng_register, ptr @__kstrtabns_hwrng_register }, section "___ksymtab_gpl+hwrng_register", align 4
@hwrng_fill = internal unnamed_addr global ptr null, align 4
@__kstrtab_hwrng_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_hwrng_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_hwrng_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hwrng_unregister to i32), ptr @__kstrtab_hwrng_unregister, ptr @__kstrtabns_hwrng_unregister }, section "___ksymtab_gpl+hwrng_unregister", align 4
@.str = private unnamed_addr constant [19 x i8] c"devm_hwrng_release\00", align 1
@__kstrtab_devm_hwrng_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_hwrng_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_hwrng_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_hwrng_register to i32), ptr @__kstrtab_devm_hwrng_register, ptr @__kstrtabns_devm_hwrng_register }, section "___ksymtab_gpl+devm_hwrng_register", align 4
@__kstrtab_devm_hwrng_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_hwrng_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_hwrng_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_hwrng_unregister to i32), ptr @__kstrtab_devm_hwrng_unregister, ptr @__kstrtabns_devm_hwrng_unregister }, section "___ksymtab_gpl+devm_hwrng_unregister", align 4
@rng_buffer = internal unnamed_addr global ptr null, align 4
@rng_fillbuf = internal unnamed_addr global ptr null, align 4
@__initcall__kmod_rng_core__212_641_hwrng_modinit6 = internal global ptr @hwrng_modinit, section ".initcall6.init", align 4
@__exitcall_hwrng_modexit = internal global ptr @hwrng_modexit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description213 = internal constant [62 x i8] c"rng_core.description=H/W Random Number Generator (RNG) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file214 = internal constant [46 x i8] c"rng_core.file=drivers/char/hw_random/rng-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license215 = internal constant [21 x i8] c"rng_core.license=GPL\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"hw_random\00", align 1
@rng_chrdev_ops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr @rng_dev_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rng_dev_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rng_dev_groups = internal global [2 x ptr] [ptr @rng_dev_group, ptr null], align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"hwrng\00", align 1
@reading_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @reading_mutex, i64 12), ptr getelementptr (i8, ptr @reading_mutex, i64 12) } }, align 4
@data_avail = internal unnamed_addr global i32 0, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@rng_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rng_dev_attrs, ptr null }, align 4
@rng_dev_attrs = internal global [4 x ptr] [ptr @dev_attr_rng_current, ptr @dev_attr_rng_available, ptr @dev_attr_rng_selected, ptr null], align 4
@dev_attr_rng_current = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420 }, ptr @rng_current_show, ptr @rng_current_store }, align 4
@dev_attr_rng_available = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @rng_available_show, ptr null }, align 4
@dev_attr_rng_selected = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @rng_selected_show, ptr null }, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"rng_current\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"rng_available\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"rng_selected\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"\013hwrng_fill thread creation failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"\014hwrng: no data available\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"drivers/char/hw_random/core.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_current_quality207, ptr @__UNIQUE_ID_current_qualitytype206, ptr @__UNIQUE_ID_default_quality209, ptr @__UNIQUE_ID_default_qualitytype208, ptr @__UNIQUE_ID_description213, ptr @__UNIQUE_ID_file214, ptr @__UNIQUE_ID_license215, ptr @__exitcall_hwrng_modexit, ptr @__initcall__kmod_rng_core__212_641_hwrng_modinit6, ptr @__ksymtab_devm_hwrng_register, ptr @__ksymtab_devm_hwrng_unregister, ptr @__ksymtab_hwrng_register, ptr @__ksymtab_hwrng_unregister, ptr @__param_current_quality, ptr @__param_default_quality, ptr @hwrng_modexit, ptr @unregister_miscdev], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @unregister_miscdev() #0 section ".exit.text" {
  tail call void @misc_deregister(ptr noundef nonnull @rng_miscdev) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hwrng_register(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %87, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %87, label %12

12:                                               ; preds = %8, %4
  tail call void @mutex_lock(ptr noundef nonnull @rng_mutex) #11
  br label %13

13:                                               ; preds = %17, %12
  %14 = phi ptr [ @rng_list, %12 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, @rng_list
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %15, i32 -32
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %0, align 4
  %21 = tail call i32 @strcmp(ptr noundef %19, ptr noundef %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %84, label %13

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 10
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %25, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #11
  tail call void @complete(ptr noundef %24) #11
  %26 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 7
  br label %27

27:                                               ; preds = %31, %23
  %28 = phi ptr [ @rng_list, %23 ], [ %29, %31 ]
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, @rng_list
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %29, i32 -4
  %33 = load i16, ptr %32, align 4
  %34 = load i16, ptr %26, align 4
  %35 = icmp ult i16 %33, %34
  br i1 %35, label %36, label %27

36:                                               ; preds = %31, %27
  %37 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 8
  %38 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  store ptr %37, ptr %38, align 4
  store ptr %29, ptr %37, align 4
  %40 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 8, i32 1
  store ptr %39, ptr %40, align 4
  store volatile ptr %37, ptr %39, align 4
  %41 = load ptr, ptr @current_rng, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load i1, ptr @cur_rng_set_by_user, align 4
  br i1 %44, label %80, label %45

45:                                               ; preds = %43
  %46 = load i16, ptr %26, align 4
  %47 = getelementptr inbounds %struct.hwrng, ptr %41, i32 0, i32 7
  %48 = load i16, ptr %47, align 4
  %49 = icmp ugt i16 %46, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %45, %36
  %51 = tail call fastcc i32 @set_current_rng(ptr noundef %0)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #11, !srcloc !8
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #11, !srcloc !9
  %56 = extractvalue { i32, i32, i32 } %55, 0
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58, !prof !10

58:                                               ; preds = %53
  %59 = add i32 %56, 1
  %60 = or i32 %59, %56
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %64, label %62, !prof !11

62:                                               ; preds = %58, %53
  %63 = phi i32 [ 2, %53 ], [ 1, %58 ]
  tail call void @refcount_warn_saturate(ptr noundef %54, i32 noundef %63) #11
  br label %64

64:                                               ; preds = %62, %58
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #11
  tail call fastcc void @add_early_randomness(ptr noundef %0)
  tail call void @mutex_lock(ptr noundef nonnull @rng_mutex) #11
  %65 = icmp eq ptr %0, null
  br i1 %65, label %79, label %66

66:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #11, !srcloc !8
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #11, !srcloc !13
  %68 = extractvalue { i32, i32, i32 } %67, 0
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = icmp sgt i32 %68, 0
  br i1 %71, label %79, label %72, !prof !11

72:                                               ; preds = %70
  tail call void @refcount_warn_saturate(ptr noundef %54, i32 noundef 3) #11
  br label %79

73:                                               ; preds = %66
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %74 = getelementptr %struct.hwrng, ptr %0, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  tail call void %75(ptr noundef nonnull %0) #11
  br label %78

78:                                               ; preds = %77, %73
  tail call void @complete(ptr noundef %24) #11
  br label %79

79:                                               ; preds = %78, %72, %70, %64
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #11
  br label %87

80:                                               ; preds = %45, %43
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #11
  %81 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %87

84:                                               ; preds = %50, %17
  %85 = phi i32 [ %51, %50 ], [ -17, %17 ]
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #11
  br label %87

86:                                               ; preds = %80
  tail call fastcc void @add_early_randomness(ptr noundef %0)
  br label %87

87:                                               ; preds = %86, %84, %80, %79, %8, %1
  %88 = phi i32 [ 0, %80 ], [ 0, %79 ], [ %85, %84 ], [ -22, %8 ], [ -22, %1 ], [ 0, %86 ]
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_current_rng(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @rng_mutex) #11
  br i1 %2, label %4, label %3, !prof !11

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/hw_random/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #11, !srcloc !15
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 9
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %18, %4
  %9 = phi i32 [ %16, %18 ], [ %6, %4 ]
  %10 = add i32 %9, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #11, !srcloc !8
  br label %11

11:                                               ; preds = %11, %8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 %9, i32 %10, ptr elementtype(i32) %5) #11, !srcloc !16
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11
  %16 = extractvalue { i32, i32 } %12, 1
  %17 = icmp eq i32 %16, %9
  br i1 %17, label %20, label %18, !prof !11

18:                                               ; preds = %15
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %20, label %8

20:                                               ; preds = %18, %15, %4
  %21 = phi i32 [ 0, %4 ], [ 0, %18 ], [ %9, %15 ]
  %22 = add i32 %21, 1
  %23 = or i32 %22, %21
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %26, label %25, !prof !11

25:                                               ; preds = %20
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef 0) #11
  br label %26

26:                                               ; preds = %25, %20
  %27 = icmp eq i32 %21, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = tail call i32 %30(ptr noundef %0) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %89

35:                                               ; preds = %32, %28
  store volatile i32 1, ptr %5, align 4
  %36 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 10
  store i32 0, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %26
  %38 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 7
  %39 = load i16, ptr %38, align 4
  %40 = icmp eq i16 %39, 0
  %41 = load i16, ptr @default_quality, align 2
  %42 = select i1 %40, i16 %41, i16 %39
  %43 = tail call i16 @llvm.umin.i16(i16 %42, i16 1024) #11
  store i16 %43, ptr @current_quality, align 2
  %44 = icmp eq i16 %43, 0
  %45 = load ptr, ptr @hwrng_fill, align 4
  %46 = icmp ne ptr %45, null
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = tail call i32 @kthread_stop(ptr noundef nonnull %45) #11
  %50 = load i16, ptr @current_quality, align 2
  %51 = load ptr, ptr @hwrng_fill, align 4
  br label %52

52:                                               ; preds = %48, %37
  %53 = phi ptr [ %51, %48 ], [ %45, %37 ]
  %54 = phi i16 [ %50, %48 ], [ %43, %37 ]
  %55 = icmp eq i16 %54, 0
  %56 = icmp ne ptr %53, null
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %67, label %58

58:                                               ; preds = %52
  %59 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @hwrng_fillfn, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.2) #11
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @wake_up_process(ptr noundef %59) #11
  br label %65

63:                                               ; preds = %58
  store ptr %59, ptr @hwrng_fill, align 4
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #12
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi ptr [ %59, %61 ], [ null, %63 ]
  store ptr %66, ptr @hwrng_fill, align 4
  br label %67

67:                                               ; preds = %65, %52
  %68 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @rng_mutex) #11
  br i1 %68, label %70, label %69, !prof !11

69:                                               ; preds = %67
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/hw_random/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 104, 0\0A.popsection", ""() #11, !srcloc !17
  unreachable

70:                                               ; preds = %67
  %71 = load ptr, ptr @current_rng, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %88, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.hwrng, ptr %71, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %74) #11, !srcloc !8
  %75 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %74, ptr %74, i32 1, ptr elementtype(i32) %74) #11, !srcloc !13
  %76 = extractvalue { i32, i32, i32 } %75, 0
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = icmp sgt i32 %76, 0
  br i1 %79, label %88, label %80, !prof !11

80:                                               ; preds = %78
  tail call void @refcount_warn_saturate(ptr noundef %74, i32 noundef 3) #11
  br label %88

81:                                               ; preds = %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %82 = getelementptr %struct.hwrng, ptr %71, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  tail call void %83(ptr noundef nonnull %71) #11
  br label %86

86:                                               ; preds = %85, %81
  %87 = getelementptr %struct.hwrng, ptr %71, i32 0, i32 10
  tail call void @complete(ptr noundef %87) #11
  br label %88

88:                                               ; preds = %86, %80, %78, %70
  store ptr %0, ptr @current_rng, align 4
  br label %89

89:                                               ; preds = %88, %32
  %90 = phi i32 [ 0, %88 ], [ %33, %32 ]
  ret i32 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @add_early_randomness(ptr noundef %0) unnamed_addr #2 {
  tail call void @mutex_lock(ptr noundef nonnull @reading_mutex) #11
  %2 = load ptr, ptr @rng_buffer, align 4
  %3 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @reading_mutex) #11
  br i1 %3, label %5, label %4, !prof !11

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/hw_random/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 190, 0\0A.popsection", ""() #11, !srcloc !18
  unreachable

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 %7(ptr noundef %0, ptr noundef %2, i32 noundef 16, i1 noundef zeroext false) #11
  br label %23

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = tail call i32 %13(ptr noundef %0, i32 noundef 0) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @mutex_unlock(ptr noundef nonnull @reading_mutex) #11
  br label %28

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %0, ptr noundef %2) #11
  br label %23

23:                                               ; preds = %19, %9
  %24 = phi i32 [ %10, %9 ], [ %22, %19 ]
  tail call void @mutex_unlock(ptr noundef nonnull @reading_mutex) #11
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load ptr, ptr @rng_buffer, align 4
  tail call void @add_device_randomness(ptr noundef %27, i32 noundef %24) #11
  br label %28

28:                                               ; preds = %26, %23, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hwrng_unregister(ptr noundef %0) #2 {
  tail call void @mutex_lock(ptr noundef nonnull @rng_mutex) #11
  %2 = load ptr, ptr @current_rng, align 4
  %3 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 8
  %4 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 8, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  %8 = icmp eq ptr %2, %0
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = tail call fastcc i32 @enable_best_rng()
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load ptr, ptr @current_rng, align 4
  br label %37

14:                                               ; preds = %9
  %15 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @rng_mutex) #11
  br i1 %15, label %17, label %16, !prof !11

16:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/hw_random/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 104, 0\0A.popsection", ""() #11, !srcloc !17
  unreachable

17:                                               ; preds = %14
  %18 = load ptr, ptr @current_rng, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.hwrng, ptr %18, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #11, !srcloc !8
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #11, !srcloc !13
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = icmp sgt i32 %23, 0
  br i1 %26, label %35, label %27, !prof !11

27:                                               ; preds = %25
  tail call void @refcount_warn_saturate(ptr noundef %21, i32 noundef 3) #11
  br label %35

28:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %29 = getelementptr %struct.hwrng, ptr %18, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void %30(ptr noundef nonnull %18) #11
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr %struct.hwrng, ptr %18, i32 0, i32 10
  tail call void @complete(ptr noundef %34) #11
  br label %35

35:                                               ; preds = %33, %27, %25
  store ptr null, ptr @current_rng, align 4
  br label %36

36:                                               ; preds = %35, %17
  store i1 false, ptr @cur_rng_set_by_user, align 4
  br label %53

37:                                               ; preds = %12, %1
  %38 = phi ptr [ %13, %12 ], [ %2, %1 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.hwrng, ptr %38, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #11, !srcloc !8
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #11, !srcloc !9
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45, !prof !10

45:                                               ; preds = %40
  %46 = add i32 %43, 1
  %47 = or i32 %46, %43
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %51, label %49, !prof !11

49:                                               ; preds = %45, %40
  %50 = phi i32 [ 2, %40 ], [ 1, %45 ]
  tail call void @refcount_warn_saturate(ptr noundef %41, i32 noundef %50) #11
  br label %51

51:                                               ; preds = %49, %45
  %52 = load ptr, ptr @current_rng, align 4
  br label %53

53:                                               ; preds = %51, %37, %36
  %54 = phi ptr [ %52, %51 ], [ null, %37 ], [ null, %36 ]
  %55 = load volatile ptr, ptr @rng_list, align 4
  %56 = icmp eq ptr %55, @rng_list
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #11
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load ptr, ptr @hwrng_fill, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = tail call i32 @kthread_stop(ptr noundef nonnull %58) #11
  br label %62

62:                                               ; preds = %60, %57, %53
  %63 = icmp eq ptr %54, null
  br i1 %63, label %83, label %64

64:                                               ; preds = %62
  %65 = icmp eq ptr %2, %54
  br i1 %65, label %67, label %66

66:                                               ; preds = %64
  tail call fastcc void @add_early_randomness(ptr noundef nonnull %54)
  br label %67

67:                                               ; preds = %66, %64
  tail call void @mutex_lock(ptr noundef nonnull @rng_mutex) #11
  %68 = getelementptr inbounds %struct.hwrng, ptr %54, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %68) #11, !srcloc !8
  %69 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %68, ptr %68, i32 1, ptr elementtype(i32) %68) #11, !srcloc !13
  %70 = extractvalue { i32, i32, i32 } %69, 0
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = icmp sgt i32 %70, 0
  br i1 %73, label %82, label %74, !prof !11

74:                                               ; preds = %72
  tail call void @refcount_warn_saturate(ptr noundef %68, i32 noundef 3) #11
  br label %82

75:                                               ; preds = %67
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %76 = getelementptr %struct.hwrng, ptr %54, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  tail call void %77(ptr noundef nonnull %54) #11
  br label %80

80:                                               ; preds = %79, %75
  %81 = getelementptr %struct.hwrng, ptr %54, i32 0, i32 10
  tail call void @complete(ptr noundef %81) #11
  br label %82

82:                                               ; preds = %80, %74, %72
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #11
  br label %83

83:                                               ; preds = %82, %62
  %84 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 10
  tail call void @wait_for_completion(ptr noundef %84) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @enable_best_rng() unnamed_addr #2 {
  %1 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @rng_mutex) #11
  br i1 %1, label %3, label %2, !prof !11

2:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/hw_random/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 303, 0\0A.popsection", ""() #11, !srcloc !19
  unreachable

3:                                                ; preds = %0
  %4 = load volatile ptr, ptr @rng_list, align 4
  %5 = icmp eq ptr %4, @rng_list
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %4, i32 -32
  %8 = load ptr, ptr @current_rng, align 4
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %35, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @set_current_rng(ptr noundef %7)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %35, label %36

13:                                               ; preds = %3
  %14 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @rng_mutex) #11
  br i1 %14, label %16, label %15, !prof !11

15:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/hw_random/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 104, 0\0A.popsection", ""() #11, !srcloc !17
  unreachable

16:                                               ; preds = %13
  %17 = load ptr, ptr @current_rng, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.hwrng, ptr %17, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #11, !srcloc !8
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #11, !srcloc !13
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = icmp sgt i32 %22, 0
  br i1 %25, label %34, label %26, !prof !11

26:                                               ; preds = %24
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef 3) #11
  br label %34

27:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %28 = getelementptr %struct.hwrng, ptr %17, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void %29(ptr noundef nonnull %17) #11
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr %struct.hwrng, ptr %17, i32 0, i32 10
  tail call void @complete(ptr noundef %33) #11
  br label %34

34:                                               ; preds = %32, %26, %24
  store ptr null, ptr @current_rng, align 4
  br label %35

35:                                               ; preds = %34, %16, %10, %6
  store i1 false, ptr @cur_rng_set_by_user, align 4
  br label %36

36:                                               ; preds = %35, %10
  %37 = phi i32 [ %11, %10 ], [ 0, %35 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_hwrng_register(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_hwrng_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @hwrng_register(ptr noundef %1)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #11
  br label %10

9:                                                ; preds = %5
  store ptr %1, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #11
  br label %10

10:                                               ; preds = %9, %8, %2
  %11 = phi i32 [ %6, %8 ], [ 0, %9 ], [ -12, %2 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_hwrng_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  tail call void @hwrng_unregister(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_hwrng_unregister(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_hwrng_release, ptr noundef nonnull @devm_hwrng_match, ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devm_hwrng_match(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef readnone %2) #2 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %5, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 573, i32 noundef 9, ptr noundef null) #11
  br label %12

9:                                                ; preds = %5
  %10 = icmp eq ptr %6, %2
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i32 [ 0, %8 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hwrng_modexit() #0 section ".exit.text" {
  tail call void @mutex_lock(ptr noundef nonnull @rng_mutex) #11
  %1 = load ptr, ptr @current_rng, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !11

3:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/hw_random/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 633, 0\0A.popsection", ""() #11, !srcloc !20
  unreachable

4:                                                ; preds = %0
  %5 = load ptr, ptr @rng_buffer, align 4
  tail call void @kfree(ptr noundef %5) #11
  %6 = load ptr, ptr @rng_fillbuf, align 4
  tail call void @kfree(ptr noundef %6) #11
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #11
  tail call void @misc_deregister(ptr noundef nonnull @rng_miscdev) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hwrng_modinit() #0 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 64) #13
  store ptr %2, ptr @rng_buffer, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 64) #13
  store ptr %6, ptr @rng_fillbuf, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @misc_register(ptr noundef nonnull @rng_miscdev) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @rng_fillbuf, align 4
  tail call void @kfree(ptr noundef %12) #11
  br label %13

13:                                               ; preds = %11, %4
  %14 = phi i32 [ %9, %11 ], [ -12, %4 ]
  %15 = load ptr, ptr @rng_buffer, align 4
  tail call void @kfree(ptr noundef %15) #11
  br label %16

16:                                               ; preds = %13, %8, %0
  %17 = phi i32 [ -12, %0 ], [ 0, %8 ], [ %14, %13 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rng_dev_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  br label %6

6:                                                ; preds = %134, %4
  %7 = phi i32 [ %2, %4 ], [ %107, %134 ]
  %8 = phi i32 [ 0, %4 ], [ %108, %134 ]
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %138, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @mutex_lock_interruptible(ptr noundef nonnull @rng_mutex) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load ptr, ptr @current_rng, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #11
  br label %138

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hwrng, ptr %14, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #11, !srcloc !8
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #11, !srcloc !9
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !10

22:                                               ; preds = %17
  %23 = add i32 %20, 1
  %24 = or i32 %23, %20
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %28, label %26, !prof !11

26:                                               ; preds = %22, %17
  %27 = phi i32 [ 2, %17 ], [ 1, %22 ]
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef %27) #11
  br label %28

28:                                               ; preds = %26, %22
  %29 = load ptr, ptr @current_rng, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #11
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %10
  %32 = phi ptr [ %29, %28 ], [ inttoptr (i32 -512 to ptr), %10 ]
  %33 = ptrtoint ptr %32 to i32
  br label %138

34:                                               ; preds = %28
  %35 = icmp eq ptr %29, null
  br i1 %35, label %138, label %36

36:                                               ; preds = %34
  %37 = tail call i32 @mutex_lock_interruptible(ptr noundef nonnull @reading_mutex) #11
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %145

39:                                               ; preds = %36
  %40 = load i32, ptr @data_avail, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %78

42:                                               ; preds = %39
  %43 = load ptr, ptr @rng_buffer, align 4
  %44 = load i32, ptr %5, align 4
  %45 = lshr i32 %44, 11
  %46 = and i32 %45, 1
  %47 = xor i32 %46, 1
  %48 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @reading_mutex) #11
  br i1 %48, label %50, label %49, !prof !11

49:                                               ; preds = %42
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/hw_random/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 190, 0\0A.popsection", ""() #11, !srcloc !18
  unreachable

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.hwrng, ptr %29, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = icmp ne i32 %47, 0
  %56 = tail call i32 %52(ptr noundef nonnull %29, ptr noundef %43, i32 noundef 64, i1 noundef zeroext %55) #11
  br label %69

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.hwrng, ptr %29, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = tail call i32 %59(ptr noundef nonnull %29, i32 noundef %47) #11
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 0, ptr @data_avail, align 4
  br label %74

65:                                               ; preds = %61, %57
  %66 = getelementptr inbounds %struct.hwrng, ptr %29, i32 0, i32 4
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 %67(ptr noundef nonnull %29, ptr noundef %43) #11
  br label %69

69:                                               ; preds = %65, %54
  %70 = phi i32 [ %56, %54 ], [ %68, %65 ]
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %143, label %72

72:                                               ; preds = %69
  store i32 %70, ptr @data_avail, align 4
  %73 = icmp eq i32 %70, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %72, %64
  %75 = load i32, ptr %5, align 4
  %76 = and i32 %75, 2048
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %106, label %143

78:                                               ; preds = %72, %39
  %79 = phi i32 [ %70, %72 ], [ %40, %39 ]
  %80 = tail call i32 @llvm.umin.i32(i32 %79, i32 %7)
  %81 = sub i32 %79, %80
  store i32 %81, ptr @data_avail, align 4
  %82 = getelementptr i8, ptr %1, i32 %8
  %83 = load ptr, ptr @rng_buffer, align 4
  %84 = getelementptr i8, ptr %83, i32 %81
  %85 = icmp slt i32 %80, 0
  %86 = load i1, ptr @check_copy_size.__already_done, align 1
  %87 = xor i1 %86, true
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %89, label %90, !prof !10

89:                                               ; preds = %78
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %90

90:                                               ; preds = %89, %78
  br i1 %85, label %143, label %91, !prof !10

91:                                               ; preds = %90
  %92 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %82, i32 %80, i32 -1090519040) #14, !srcloc !21
  %93 = extractvalue { i32, i32 } %92, 0
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %143

95:                                               ; preds = %91
  %96 = tail call ptr @llvm.thread.pointer() #11
  %97 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 3
  %98 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %97) #15, !srcloc !22
  %99 = and i32 %98, -13
  %100 = or i32 %99, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #11, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !24
  %101 = tail call i32 @arm_copy_to_user(ptr noundef %82, ptr noundef %84, i32 noundef %80) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %98) #11, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !24
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %143

103:                                              ; preds = %95
  %104 = sub i32 %7, %80
  %105 = add i32 %80, %8
  br label %106

106:                                              ; preds = %103, %74
  %107 = phi i32 [ %104, %103 ], [ %7, %74 ]
  %108 = phi i32 [ %105, %103 ], [ %8, %74 ]
  tail call void @mutex_unlock(ptr noundef nonnull @reading_mutex) #11
  tail call void @mutex_lock(ptr noundef nonnull @rng_mutex) #11
  %109 = getelementptr inbounds %struct.hwrng, ptr %29, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %109) #11, !srcloc !8
  %110 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %109, ptr %109, i32 1, ptr elementtype(i32) %109) #11, !srcloc !13
  %111 = extractvalue { i32, i32, i32 } %110, 0
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = icmp sgt i32 %111, 0
  br i1 %114, label %123, label %115, !prof !11

115:                                              ; preds = %113
  tail call void @refcount_warn_saturate(ptr noundef %109, i32 noundef 3) #11
  br label %123

116:                                              ; preds = %106
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %117 = getelementptr %struct.hwrng, ptr %29, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  tail call void %118(ptr noundef nonnull %29) #11
  br label %121

121:                                              ; preds = %120, %116
  %122 = getelementptr %struct.hwrng, ptr %29, i32 0, i32 10
  tail call void @complete(ptr noundef %122) #11
  br label %123

123:                                              ; preds = %121, %115, %113
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #11
  %124 = tail call ptr @llvm.thread.pointer() #11
  %125 = load volatile i32, ptr %124, align 4
  %126 = and i32 %125, 2
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %123
  %129 = tail call i32 @schedule_timeout_interruptible(i32 noundef 1) #11
  br label %130

130:                                              ; preds = %128, %123
  %131 = load volatile i32, ptr %124, align 4
  %132 = and i32 %131, 256
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138, !prof !11

134:                                              ; preds = %130
  %135 = load volatile i32, ptr %124, align 4
  %136 = and i32 %135, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %6, label %138

138:                                              ; preds = %161, %134, %130, %34, %31, %16, %6
  %139 = phi i32 [ %8, %31 ], [ %8, %161 ], [ %8, %16 ], [ %108, %130 ], [ %108, %134 ], [ %8, %34 ], [ %8, %6 ]
  %140 = phi i32 [ %33, %31 ], [ %146, %161 ], [ -19, %16 ], [ -512, %130 ], [ -512, %134 ], [ -19, %34 ], [ 0, %6 ]
  %141 = icmp eq i32 %139, 0
  %142 = select i1 %141, i32 %140, i32 %139
  ret i32 %142

143:                                              ; preds = %95, %91, %90, %74, %69
  %144 = phi i32 [ %70, %69 ], [ -11, %74 ], [ -14, %95 ], [ -14, %90 ], [ -14, %91 ]
  tail call void @mutex_unlock(ptr noundef nonnull @reading_mutex) #11
  br label %145

145:                                              ; preds = %143, %36
  %146 = phi i32 [ %144, %143 ], [ -512, %36 ]
  tail call void @mutex_lock(ptr noundef nonnull @rng_mutex) #11
  %147 = getelementptr inbounds %struct.hwrng, ptr %29, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %147) #11, !srcloc !8
  %148 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %147, ptr %147, i32 1, ptr elementtype(i32) %147) #11, !srcloc !13
  %149 = extractvalue { i32, i32, i32 } %148, 0
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %154, label %151

151:                                              ; preds = %145
  %152 = icmp sgt i32 %149, 0
  br i1 %152, label %161, label %153, !prof !11

153:                                              ; preds = %151
  tail call void @refcount_warn_saturate(ptr noundef %147, i32 noundef 3) #11
  br label %161

154:                                              ; preds = %145
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %155 = getelementptr %struct.hwrng, ptr %29, i32 0, i32 2
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %154
  tail call void %156(ptr noundef nonnull %29) #11
  br label %159

159:                                              ; preds = %158, %154
  %160 = getelementptr %struct.hwrng, ptr %29, i32 0, i32 10
  tail call void @complete(ptr noundef %160) #11
  br label %161

161:                                              ; preds = %159, %153, %151
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #11
  br label %138
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @rng_dev_open(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = and i32 %4, 2
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 0, i32 -22
  %10 = select i1 %6, i32 -22, i32 %9
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rng_current_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef nonnull @rng_mutex) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  %7 = load ptr, ptr @current_rng, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #11
  br label %31

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hwrng, ptr %7, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #11, !srcloc !8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #11, !srcloc !9
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !10

15:                                               ; preds = %10
  %16 = add i32 %13, 1
  %17 = or i32 %16, %13
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %21, label %19, !prof !11

19:                                               ; preds = %15, %10
  %20 = phi i32 [ 2, %10 ], [ 1, %15 ]
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef %20) #11
  br label %21

21:                                               ; preds = %19, %15
  %22 = load ptr, ptr @current_rng, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #11
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %3
  %25 = phi ptr [ %22, %21 ], [ inttoptr (i32 -512 to ptr), %3 ]
  %26 = ptrtoint ptr %25 to i32
  br label %52

27:                                               ; preds = %21
  %28 = icmp eq ptr %22, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %22, align 4
  br label %31

31:                                               ; preds = %29, %27, %9
  %32 = phi i1 [ false, %29 ], [ true, %27 ], [ true, %9 ]
  %33 = phi ptr [ %22, %29 ], [ null, %27 ], [ null, %9 ]
  %34 = phi ptr [ %30, %29 ], [ @.str.7, %27 ], [ @.str.7, %9 ]
  %35 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef %34)
  tail call void @mutex_lock(ptr noundef nonnull @rng_mutex) #11
  br i1 %32, label %51, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.hwrng, ptr %33, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #11, !srcloc !8
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #11, !srcloc !13
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = icmp sgt i32 %39, 0
  br i1 %42, label %51, label %43, !prof !11

43:                                               ; preds = %41
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef 3) #11
  br label %51

44:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %45 = getelementptr %struct.hwrng, ptr %33, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void %46(ptr noundef nonnull %33) #11
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr %struct.hwrng, ptr %33, i32 0, i32 10
  tail call void @complete(ptr noundef %50) #11
  br label %51

51:                                               ; preds = %49, %43, %41, %31
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #11
  br label %52

52:                                               ; preds = %51, %24
  %53 = phi i32 [ %26, %24 ], [ %35, %51 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rng_current_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef nonnull @rng_mutex) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %63

7:                                                ; preds = %4
  %8 = load ptr, ptr @current_rng, align 4
  %9 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.8) #11
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @enable_best_rng()
  br label %23

12:                                               ; preds = %16, %7
  %13 = phi ptr [ %14, %16 ], [ @rng_list, %7 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @rng_list
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %14, i32 -32
  %18 = load ptr, ptr %17, align 4
  %19 = tail call zeroext i1 @sysfs_streq(ptr noundef %18, ptr noundef %2) #11
  br i1 %19, label %20, label %12

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %14, i32 -32
  store i1 true, ptr @cur_rng_set_by_user, align 4
  %22 = tail call fastcc i32 @set_current_rng(ptr noundef %21)
  br label %23

23:                                               ; preds = %20, %12, %10
  %24 = phi i32 [ %11, %10 ], [ %22, %20 ], [ 0, %12 ]
  %25 = load ptr, ptr @current_rng, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %59, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.hwrng, ptr %25, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #11, !srcloc !8
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #11, !srcloc !9
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32, !prof !10

32:                                               ; preds = %27
  %33 = add i32 %30, 1
  %34 = or i32 %33, %30
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %38, label %36, !prof !11

36:                                               ; preds = %32, %27
  %37 = phi i32 [ 2, %27 ], [ 1, %32 ]
  tail call void @refcount_warn_saturate(ptr noundef %28, i32 noundef %37) #11
  br label %38

38:                                               ; preds = %36, %32
  %39 = load ptr, ptr @current_rng, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #11
  %40 = icmp eq ptr %39, null
  br i1 %40, label %60, label %41

41:                                               ; preds = %38
  %42 = icmp eq ptr %39, %8
  br i1 %42, label %44, label %43

43:                                               ; preds = %41
  tail call fastcc void @add_early_randomness(ptr noundef nonnull %39)
  br label %44

44:                                               ; preds = %43, %41
  tail call void @mutex_lock(ptr noundef nonnull @rng_mutex) #11
  %45 = getelementptr inbounds %struct.hwrng, ptr %39, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #11, !srcloc !8
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #11, !srcloc !13
  %47 = extractvalue { i32, i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = icmp sgt i32 %47, 0
  br i1 %50, label %59, label %51, !prof !11

51:                                               ; preds = %49
  tail call void @refcount_warn_saturate(ptr noundef %45, i32 noundef 3) #11
  br label %59

52:                                               ; preds = %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %53 = getelementptr %struct.hwrng, ptr %39, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void %54(ptr noundef nonnull %39) #11
  br label %57

57:                                               ; preds = %56, %52
  %58 = getelementptr %struct.hwrng, ptr %39, i32 0, i32 10
  tail call void @complete(ptr noundef %58) #11
  br label %59

59:                                               ; preds = %57, %51, %49, %23
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #11
  br label %60

60:                                               ; preds = %59, %38
  %61 = icmp eq i32 %24, 0
  %62 = select i1 %61, i32 %3, i32 %24
  br label %63

63:                                               ; preds = %60, %4
  %64 = phi i32 [ %62, %60 ], [ -512, %4 ]
  ret i32 %64
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rng_available_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef nonnull @rng_mutex) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  store i8 0, ptr %2, align 1
  %7 = load ptr, ptr @rng_list, align 4
  %8 = icmp eq ptr %7, @rng_list
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %15, %9 ], [ %7, %6 ]
  %11 = getelementptr i8, ptr %10, i32 -32
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @strlcat(ptr noundef %2, ptr noundef %12, i32 noundef 4096) #11
  %14 = tail call i32 @strlcat(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 4096) #11
  %15 = load ptr, ptr %10, align 4
  %16 = icmp eq ptr %15, @rng_list
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  %18 = tail call i32 @strlcat(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 4096) #11
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #11
  %19 = tail call i32 @strlen(ptr noundef %2)
  br label %20

20:                                               ; preds = %17, %3
  %21 = phi i32 [ %19, %17 ], [ -512, %3 ]
  ret i32 %21
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rng_selected_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = load i1, ptr @cur_rng_set_by_user, align 4
  %5 = zext i1 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %5) #11
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hwrng_fillfn(ptr nocapture noundef readnone %0) #2 {
  %2 = tail call zeroext i1 @kthread_should_stop() #11
  br i1 %2, label %76, label %3

3:                                                ; preds = %74, %1
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef nonnull @rng_mutex) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %76

6:                                                ; preds = %3
  %7 = load ptr, ptr @current_rng, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hwrng, ptr %7, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #11, !srcloc !8
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #11, !srcloc !9
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !10

14:                                               ; preds = %9
  %15 = add i32 %12, 1
  %16 = or i32 %15, %12
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %20, label %18, !prof !11

18:                                               ; preds = %14, %9
  %19 = phi i32 [ 2, %9 ], [ 1, %14 ]
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef %19) #11
  br label %20

20:                                               ; preds = %18, %14, %6
  %21 = load ptr, ptr @current_rng, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #11
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  %23 = icmp eq ptr %21, null
  %24 = or i1 %22, %23
  br i1 %24, label %76, label %25

25:                                               ; preds = %20
  tail call void @mutex_lock(ptr noundef nonnull @reading_mutex) #11
  %26 = load ptr, ptr @rng_fillbuf, align 4
  %27 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @reading_mutex) #11
  br i1 %27, label %29, label %28, !prof !11

28:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/hw_random/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 190, 0\0A.popsection", ""() #11, !srcloc !18
  unreachable

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.hwrng, ptr %21, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 %31(ptr noundef nonnull %21, ptr noundef %26, i32 noundef 64, i1 noundef zeroext true) #11
  br label %46

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.hwrng, ptr %21, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = tail call i32 %37(ptr noundef nonnull %21, i32 noundef 1) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39, %35
  %43 = getelementptr inbounds %struct.hwrng, ptr %21, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 %44(ptr noundef nonnull %21, ptr noundef %26) #11
  br label %46

46:                                               ; preds = %42, %39, %33
  %47 = phi i32 [ %34, %33 ], [ %45, %42 ], [ 0, %39 ]
  tail call void @mutex_unlock(ptr noundef nonnull @reading_mutex) #11
  tail call void @mutex_lock(ptr noundef nonnull @rng_mutex) #11
  %48 = getelementptr inbounds %struct.hwrng, ptr %21, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #11, !srcloc !8
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #11, !srcloc !13
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = icmp sgt i32 %50, 0
  br i1 %53, label %62, label %54, !prof !11

54:                                               ; preds = %52
  tail call void @refcount_warn_saturate(ptr noundef %48, i32 noundef 3) #11
  br label %62

55:                                               ; preds = %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %56 = getelementptr %struct.hwrng, ptr %21, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void %57(ptr noundef nonnull %21) #11
  br label %60

60:                                               ; preds = %59, %55
  %61 = getelementptr %struct.hwrng, ptr %21, i32 0, i32 10
  tail call void @complete(ptr noundef %61) #11
  br label %62

62:                                               ; preds = %60, %54, %52
  tail call void @mutex_unlock(ptr noundef nonnull @rng_mutex) #11
  %63 = icmp slt i32 %47, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  %66 = tail call i32 @msleep_interruptible(i32 noundef 10000) #11
  br label %74

67:                                               ; preds = %62
  %68 = load ptr, ptr @rng_fillbuf, align 4
  %69 = load i16, ptr @current_quality, align 2
  %70 = zext i16 %69 to i32
  %71 = shl i32 %47, 3
  %72 = mul i32 %71, %70
  %73 = ashr i32 %72, 10
  tail call void @add_hwgenerator_randomness(ptr noundef %68, i32 noundef %47, i32 noundef %73) #11
  br label %74

74:                                               ; preds = %67, %64
  %75 = tail call zeroext i1 @kthread_should_stop() #11
  br i1 %75, label %76, label %3

76:                                               ; preds = %74, %20, %3, %1
  store ptr null, ptr @hwrng_fill, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_hwgenerator_randomness(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind readonly }

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
!8 = !{i64 401286, i64 2147891257, i64 2147891283, i64 2147891330, i64 2147891352, i64 2147891380, i64 2147891400}
!9 = !{i64 2147904927, i64 2147904959, i64 2147904988, i64 2147905022, i64 2147905053, i64 2147905076}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148005125}
!13 = !{i64 2147907284, i64 2147907316, i64 2147907345, i64 2147907379, i64 2147907410, i64 2147907433}
!14 = !{i64 2149253027}
!15 = !{i64 2151980583, i64 2151981076, i64 2151980620, i64 2151980676, i64 2151980710, i64 2151980734, i64 2151980775, i64 2151980796, i64 2151980824, i64 2151980858}
!16 = !{i64 387349, i64 387373, i64 387394, i64 387411, i64 387428}
!17 = !{i64 2151981660, i64 2151982154, i64 2151981697, i64 2151981753, i64 2151981787, i64 2151981811, i64 2151981852, i64 2151981873, i64 2151981901, i64 2151981935}
!18 = !{i64 2151982983, i64 2151983477, i64 2151983020, i64 2151983076, i64 2151983110, i64 2151983134, i64 2151983175, i64 2151983196, i64 2151983224, i64 2151983258}
!19 = !{i64 2151984150, i64 2151984644, i64 2151984187, i64 2151984243, i64 2151984277, i64 2151984301, i64 2151984342, i64 2151984363, i64 2151984391, i64 2151984425}
!20 = !{i64 2152012459, i64 2152012953, i64 2152012496, i64 2152012552, i64 2152012586, i64 2152012610, i64 2152012651, i64 2152012672, i64 2152012700, i64 2152012734}
!21 = !{i64 2151485117, i64 2151485142}
!22 = !{i64 3980651}
!23 = !{i64 3980848}
!24 = !{i64 2151466127}
