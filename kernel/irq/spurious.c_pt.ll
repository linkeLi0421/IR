; ModuleID = '/llk/IR/kernel/irq/spurious.c_pt.bc'
source_filename = "../kernel/irq/spurious.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irqaction = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [12 x i8] }

@irq_wait_for_poll.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@irq_poll_cpu = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"kernel/irq/spurious.c\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"irq poll in progress on cpu %d for irq %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.2 = private unnamed_addr constant [21 x i8] c"\010Disabling IRQ #%d\0A\00", align 1
@poll_spurious_irq_timer = internal global %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @poll_spurious_irqs, i32 0 }, align 4
@noirqdebug = dso_local global i8 0, section ".data..read_mostly", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"\016IRQ lockup detection disabled\0A\00", align 1
@__setup_str_noirqdebug_setup = internal constant [11 x i8] c"noirqdebug\00", section ".init.rodata", align 1
@__setup_noirqdebug_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_noirqdebug_setup, ptr @noirqdebug_setup, i32 0 }, section ".init.setup", align 4
@__param_str_noirqdebug = internal constant [20 x i8] c"spurious.noirqdebug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_noirqdebug = internal constant %struct.kernel_param { ptr @__param_str_noirqdebug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.4 { ptr @noirqdebug } }, section "__param", align 4
@__UNIQUE_ID_noirqdebugtype171 = internal constant [34 x i8] c"spurious.parmtype=noirqdebug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_noirqdebug172 = internal constant [64 x i8] c"spurious.parm=noirqdebug:Disable irq lockup detection when true\00", section ".modinfo", align 1
@__setup_str_irqfixup_setup = internal constant [9 x i8] c"irqfixup\00", section ".init.rodata", align 1
@__setup_irqfixup_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_irqfixup_setup, ptr @irqfixup_setup, i32 0 }, section ".init.setup", align 4
@__param_str_irqfixup = internal constant [18 x i8] c"spurious.irqfixup\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@irqfixup = internal global i32 0, section ".data..read_mostly", align 4
@__param_irqfixup = internal constant %struct.kernel_param { ptr @__param_str_irqfixup, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.4 { ptr @irqfixup } }, section "__param", align 4
@__UNIQUE_ID_irqfixuptype173 = internal constant [31 x i8] c"spurious.parmtype=irqfixup:int\00", section ".modinfo", align 1
@__setup_str_irqpoll_setup = internal constant [8 x i8] c"irqpoll\00", section ".init.rodata", align 1
@__setup_irqpoll_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_irqpoll_setup, ptr @irqpoll_setup, i32 0 }, section ".init.setup", align 4
@report_bad_irq.count = internal unnamed_addr global i32 100, align 4
@irq_poll_active = internal global %struct.atomic_t zeroinitializer, align 4
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"\013irq event %d: bogus return value %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"\013irq %d: nobody cared (try booting with the \22irqpoll\22 option)\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"\013handlers:\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"\013[<%p>] %ps\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"\01c threaded [<%p>] %ps\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"\014Misrouted IRQ fixup support enabled.\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"\014This may impact system performance.\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"\014Misrouted IRQ fixup and polling support enabled\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"\014This may significantly impact system performance\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_irqfixuptype173, ptr @__UNIQUE_ID_noirqdebug172, ptr @__UNIQUE_ID_noirqdebugtype171, ptr @__param_irqfixup, ptr @__param_noirqdebug, ptr @__setup_irqfixup_setup, ptr @__setup_irqpoll_setup, ptr @__setup_noirqdebug_setup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @irq_wait_for_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @irq_poll_cpu, align 4
  %3 = tail call ptr @llvm.thread.pointer() #5
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %2, %5
  %7 = load i1, ptr @irq_wait_for_poll.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %13, !prof !8

10:                                               ; preds = %1
  store i1 true, ptr @irq_wait_for_poll.__already_done, align 1
  %11 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %2, i32 noundef %12) #5
  br label %13

13:                                               ; preds = %10, %1
  br i1 %6, label %41, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 15
  %16 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  br label %17

17:                                               ; preds = %29, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  %18 = load i16, ptr %15, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %20 = load ptr, ptr %16, align 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 262144
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %24, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !14
  %25 = load ptr, ptr %16, align 4
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 262144
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %24

29:                                               ; preds = %24, %17
  tail call void @_raw_spin_lock(ptr noundef %15) #5
  %30 = load ptr, ptr %16, align 4
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 262144
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %17

34:                                               ; preds = %29
  %35 = and i32 %31, 65536
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 4
  %39 = load ptr, ptr %38, align 64
  %40 = icmp ne ptr %39, null
  br label %41

41:                                               ; preds = %37, %34, %13
  %42 = phi i1 [ false, %13 ], [ false, %34 ], [ %40, %37 ]
  ret i1 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @note_interrupt(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %116

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 262144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %116

12:                                               ; preds = %7
  %13 = icmp ult i32 %1, 4
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = load i32, ptr @report_bad_irq.count, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %116

17:                                               ; preds = %14
  %18 = add nsw i32 %15, -1
  store i32 %18, ptr @report_bad_irq.count, align 4
  tail call fastcc void @__report_bad_irq(ptr noundef %0, i32 noundef %1) #5
  br label %116

19:                                               ; preds = %12
  %20 = and i32 %1, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %19
  %23 = icmp eq i32 %1, 2
  %24 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 14
  %25 = load i32, ptr %24, align 8
  br i1 %23, label %26, label %35

26:                                               ; preds = %22
  %27 = icmp sgt i32 %25, -1
  br i1 %27, label %33, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 13
  %30 = load volatile i32, ptr %29, align 4
  %31 = or i32 %30, -2147483648
  %32 = icmp eq i32 %31, %25
  br i1 %32, label %39, label %62

33:                                               ; preds = %26
  %34 = or i32 %25, -2147483648
  store i32 %34, ptr %24, align 8
  br label %116

35:                                               ; preds = %22
  %36 = and i32 %25, 2147483647
  store i32 %36, ptr %24, align 8
  br label %50

37:                                               ; preds = %19
  %38 = icmp eq i32 %1, 0
  br i1 %38, label %39, label %50, !prof !8

39:                                               ; preds = %37, %28
  %40 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 11
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 10
  %43 = load volatile i32, ptr @jiffies, align 64
  %44 = sub i32 %42, %43
  %45 = icmp slt i32 %44, 0
  %46 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 12
  br i1 %45, label %55, label %47

47:                                               ; preds = %39
  %48 = load i32, ptr %46, align 32
  %49 = add i32 %48, 1
  br label %55

50:                                               ; preds = %37, %35
  %51 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = load i32, ptr @irqfixup, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %92, label %67

55:                                               ; preds = %47, %39
  %56 = phi i32 [ %49, %47 ], [ 1, %39 ]
  store i32 %56, ptr %46, align 32
  %57 = load volatile i32, ptr @jiffies, align 64
  store i32 %57, ptr %40, align 4
  %58 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = load i32, ptr @irqfixup, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %92, label %87

62:                                               ; preds = %28
  store i32 %31, ptr %24, align 8
  %63 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr @irqfixup, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %92, label %67

67:                                               ; preds = %62, %50
  %68 = phi i32 [ 1, %62 ], [ %1, %50 ]
  %69 = phi i32 [ %64, %62 ], [ %52, %50 ]
  %70 = phi i32 [ %65, %62 ], [ %53, %50 ]
  %71 = icmp slt i32 %70, 2
  br i1 %71, label %92, label %72

72:                                               ; preds = %67
  %73 = icmp eq i32 %69, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 4
  %76 = load ptr, ptr %75, align 64
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %77 = icmp eq ptr %76, null
  br i1 %77, label %92, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.irqaction, ptr %76, i32 0, i32 8
  %80 = load i32, ptr %79, align 32
  %81 = and i32 %80, 4096
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %92, label %83, !prof !16

83:                                               ; preds = %78
  %84 = tail call fastcc i32 @misrouted_irq(i32 noundef %69)
  br label %92

85:                                               ; preds = %72
  %86 = tail call fastcc i32 @misrouted_irq(i32 noundef 0)
  br label %92

87:                                               ; preds = %55
  %88 = tail call fastcc i32 @misrouted_irq(i32 noundef %59)
  %89 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 12
  %90 = load i32, ptr %89, align 32
  %91 = sub i32 %90, %88
  store i32 %91, ptr %89, align 32
  br label %92

92:                                               ; preds = %87, %85, %83, %78, %74, %67, %62, %55, %50
  %93 = phi i32 [ 0, %85 ], [ %69, %83 ], [ %59, %87 ], [ %69, %78 ], [ %64, %62 ], [ %69, %74 ], [ %69, %67 ], [ %52, %50 ], [ %59, %55 ]
  %94 = phi i32 [ %68, %85 ], [ %68, %83 ], [ 0, %87 ], [ %68, %78 ], [ 1, %62 ], [ %68, %74 ], [ %68, %67 ], [ %1, %50 ], [ 0, %55 ]
  %95 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 12
  %96 = load i32, ptr %95, align 32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %116, label %98, !prof !16

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 10
  %100 = load i32, ptr %99, align 8
  %101 = add i32 %100, 1
  store i32 %101, ptr %99, align 8
  %102 = icmp ult i32 %101, 100000
  br i1 %102, label %116, label %103, !prof !16

103:                                              ; preds = %98
  store i32 0, ptr %99, align 8
  %104 = icmp ugt i32 %96, 99900
  br i1 %104, label %105, label %115, !prof !8

105:                                              ; preds = %103
  tail call fastcc void @__report_bad_irq(ptr noundef %0, i32 noundef %94)
  %106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %93) #6
  %107 = load i32, ptr %3, align 8
  %108 = or i32 %107, 2
  store i32 %108, ptr %3, align 8
  %109 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 7
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, 1
  store i32 %111, ptr %109, align 4
  tail call void @irq_disable(ptr noundef %0) #5
  %112 = load volatile i32, ptr @jiffies, align 64
  %113 = add i32 %112, 10
  %114 = tail call i32 @mod_timer(ptr noundef nonnull @poll_spurious_irq_timer, i32 noundef %113) #5
  br label %115

115:                                              ; preds = %105, %103
  store i32 0, ptr %95, align 32
  br label %116

116:                                              ; preds = %115, %98, %92, %33, %17, %14, %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @misrouted_irq(i32 noundef %0) unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @irq_poll_active) #5, !srcloc !18
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @irq_poll_active, ptr nonnull @irq_poll_active, i32 1, ptr nonnull elementtype(i32) @irq_poll_active) #5, !srcloc !19
  %3 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !20
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %31

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #5
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  store i32 %8, ptr @irq_poll_cpu, align 4
  %9 = tail call ptr @irq_to_desc(i32 noundef 0) #5
  %10 = load i32, ptr @nr_irqs, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %25, %5
  %13 = phi i32 [ %26, %25 ], [ 0, %5 ]
  %14 = phi i32 [ %27, %25 ], [ 0, %5 ]
  %15 = phi ptr [ %28, %25 ], [ %9, %5 ]
  %16 = icmp eq ptr %15, null
  %17 = icmp eq i32 %14, 0
  %18 = or i1 %16, %17
  %19 = icmp eq i32 %14, %0
  %20 = or i1 %19, %18
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = tail call fastcc i32 @try_one_irq(ptr noundef nonnull %15, i1 noundef zeroext false)
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 %13, i32 1
  br label %25

25:                                               ; preds = %21, %12
  %26 = phi i32 [ %13, %12 ], [ %24, %21 ]
  %27 = add nuw nsw i32 %14, 1
  %28 = tail call ptr @irq_to_desc(i32 noundef %27) #5
  %29 = load i32, ptr @nr_irqs, align 4
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %12, label %31

31:                                               ; preds = %25, %5, %1
  %32 = phi i32 [ 0, %1 ], [ 0, %5 ], [ %26, %25 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @irq_poll_active) #5, !srcloc !18
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @irq_poll_active, ptr nonnull @irq_poll_active, i32 1, ptr nonnull elementtype(i32) @irq_poll_active) #5, !srcloc !21
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__report_bad_irq(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %1, 4
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %4, i32 noundef %1) #6
  br label %10

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %4) #6
  br label %10

10:                                               ; preds = %8, %6
  tail call void @dump_stack() #6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #6
  %12 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 15
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #5
  %14 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %26, %10
  %18 = phi ptr [ %29, %26 ], [ %15, %10 ]
  %19 = load ptr, ptr %18, align 64
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %19, ptr noundef %19) #6
  %21 = getelementptr inbounds %struct.irqaction, ptr %18, i32 0, i32 4
  %22 = load ptr, ptr %21, align 16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %22, ptr noundef nonnull %22) #6
  br label %26

26:                                               ; preds = %24, %17
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #6
  %28 = getelementptr inbounds %struct.irqaction, ptr %18, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %17

31:                                               ; preds = %26, %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @noirqdebug_setup(ptr nocapture readnone %0) #0 {
  store i8 1, ptr @noirqdebug, align 1
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @irqfixup_setup(ptr nocapture noundef readnone %0) #3 section ".init.text" {
  store i32 1, ptr @irqfixup, align 4
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #6
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #6
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @irqpoll_setup(ptr nocapture noundef readnone %0) #3 section ".init.text" {
  store i32 2, ptr @irqfixup, align 4
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #6
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #6
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @try_one_irq(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 295424
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %48

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65536
  %13 = icmp eq i32 %12, 0
  %14 = or i1 %13, %1
  br i1 %14, label %15, label %48

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 64
  %18 = icmp eq ptr %17, null
  br i1 %18, label %48, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.irqaction, ptr %17, i32 0, i32 8
  %21 = load i32, ptr %20, align 32
  %22 = and i32 %21, 640
  %23 = icmp eq i32 %22, 128
  br i1 %23, label %24, label %48

24:                                               ; preds = %19
  %25 = and i32 %11, 262144
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %28 = load i32, ptr %27, align 8
  br i1 %26, label %31, label %29

29:                                               ; preds = %24
  %30 = or i32 %28, 512
  store i32 %30, ptr %27, align 8
  br label %48

31:                                               ; preds = %24
  %32 = or i32 %28, 8
  store i32 %32, ptr %27, align 8
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i32 [ 0, %31 ], [ %37, %33 ]
  %35 = tail call i32 @handle_irq_event(ptr noundef %0) #5
  %36 = icmp eq i32 %35, 1
  %37 = select i1 %36, i32 1, i32 %34
  %38 = load ptr, ptr %16, align 64
  %39 = load i32, ptr %27, align 8
  %40 = and i32 %39, 512
  %41 = icmp ne i32 %40, 0
  %42 = icmp ne ptr %38, null
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %33, label %44

44:                                               ; preds = %33
  %45 = and i32 %39, -9
  store i32 %45, ptr %27, align 8
  %46 = icmp eq i32 %37, 1
  %47 = zext i1 %46 to i32
  br label %48

48:                                               ; preds = %44, %29, %19, %15, %8, %2
  %49 = phi i32 [ 0, %2 ], [ 0, %29 ], [ %47, %44 ], [ 0, %19 ], [ 0, %15 ], [ 0, %8 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  %50 = load i16, ptr %3, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handle_irq_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @poll_spurious_irqs(ptr nocapture noundef readnone %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @irq_poll_active) #5, !srcloc !18
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @irq_poll_active, ptr nonnull @irq_poll_active, i32 1, ptr nonnull elementtype(i32) @irq_poll_active) #5, !srcloc !19
  %3 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !20
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #5
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  store i32 %8, ptr @irq_poll_cpu, align 4
  %9 = tail call ptr @irq_to_desc(i32 noundef 0) #5
  %10 = load i32, ptr @nr_irqs, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %25, %5
  %13 = phi i32 [ %26, %25 ], [ 0, %5 ]
  %14 = phi ptr [ %27, %25 ], [ %9, %5 ]
  %15 = icmp eq ptr %14, null
  %16 = icmp eq i32 %13, 0
  %17 = or i1 %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.irq_desc, ptr %14, i32 0, i32 6
  %20 = load i32, ptr %19, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !22
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #5, !srcloc !23
  %24 = tail call fastcc i32 @try_one_irq(ptr noundef nonnull %14, i1 noundef zeroext true)
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !24
  br label %25

25:                                               ; preds = %23, %18, %12
  %26 = add nuw nsw i32 %13, 1
  %27 = tail call ptr @irq_to_desc(i32 noundef %26) #5
  %28 = load i32, ptr @nr_irqs, align 4
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %12, label %30

30:                                               ; preds = %25, %5, %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @irq_poll_active) #5, !srcloc !18
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @irq_poll_active, ptr nonnull @irq_poll_active, i32 1, ptr nonnull elementtype(i32) @irq_poll_active) #5, !srcloc !21
  %32 = load volatile i32, ptr @jiffies, align 64
  %33 = add i32 %32, 10
  %34 = tail call i32 @mod_timer(ptr noundef nonnull @poll_spurious_irq_timer, i32 noundef %33) #5
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!9 = !{i64 2148919653}
!10 = !{i64 2148915477}
!11 = !{i64 2148915552, i64 2148915579, i64 2148915626, i64 2148915648, i64 2148915676, i64 2148915696}
!12 = !{i64 2148942656}
!13 = !{i64 2151604250}
!14 = !{i64 2151604092}
!15 = !{i64 2151608454}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2148025666}
!18 = !{i64 426458, i64 2147916429, i64 2147916455, i64 2147916502, i64 2147916524, i64 2147916552, i64 2147916572}
!19 = !{i64 2147928528, i64 2147928560, i64 2147928589, i64 2147928623, i64 2147928654, i64 2147928677}
!20 = !{i64 2148025869}
!21 = !{i64 2147930201, i64 2147930227, i64 2147930256, i64 2147930290, i64 2147930321, i64 2147930344}
!22 = !{i64 2151605240}
!23 = !{i64 322132}
!24 = !{i64 321942}
