; ModuleID = '/llk/IR/drivers/leds/trigger/ledtrig-cpu.c_pt.bc'
source_filename = "../drivers/leds/trigger/ledtrig-cpu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ledtrig_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22ledtrig_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_ledtrig_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.led_trigger_cpu = type { i8, [8 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }

@cpu_trig = internal global %struct.led_trigger_cpu zeroinitializer, section ".data..percpu", align 4
@num_active_cpus = internal global %struct.atomic_t zeroinitializer, align 4
@__cpu_present_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@trig_cpu_all = internal global ptr null, align 4
@__kstrtab_ledtrig_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_ledtrig_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_ledtrig_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ledtrig_cpu to i32), ptr @__kstrtab_ledtrig_cpu, ptr @__kstrtabns_ledtrig_cpu }, section "___ksymtab+ledtrig_cpu", align 4
@__initcall__kmod_ledtrig_cpu__167_172_ledtrig_cpu_init6 = internal global ptr @ledtrig_cpu_init, section ".initcall6.init", align 4
@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"cpu%d\00", align 1
@ledtrig_cpu_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @ledtrig_cpu_syscore_suspend, ptr @ledtrig_cpu_syscore_resume, ptr @ledtrig_cpu_syscore_shutdown }, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"leds/trigger:starting\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"\013CPU hotplug notifier for ledtrig-cpu could not be registered: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"\016ledtrig-cpu: registered to indicate activity on CPUs\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_ledtrig_cpu__167_172_ledtrig_cpu_init6, ptr @__ksymtab_ledtrig_cpu], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ledtrig_cpu(i32 noundef %0) #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #3, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr @cpu_trig to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i8, ptr %6, align 4, !range !10
  %8 = icmp ne i8 %7, 0
  %9 = icmp ult i32 %0, 5
  %10 = trunc i32 %0 to i5
  %11 = lshr i5 6, %10
  %12 = and i5 %11, 1
  %13 = icmp ne i5 %12, 0
  %14 = select i1 %9, i1 %13, i1 %8
  %15 = zext i1 %14 to i8
  %16 = icmp eq i8 %7, %15
  br i1 %16, label %32, label %17

17:                                               ; preds = %1
  store i8 %15, ptr %6, align 4
  %18 = select i1 %14, i32 1, i32 -1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @num_active_cpus) #7, !srcloc !11
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @num_active_cpus, ptr nonnull @num_active_cpus, i32 %18, ptr nonnull elementtype(i32) @num_active_cpus) #7, !srcloc !12
  %20 = load volatile i32, ptr @num_active_cpus, align 4
  %21 = load i32, ptr @__cpu_present_mask, align 4
  %22 = and i32 %21, 65535
  %23 = tail call i32 @__sw_hweight32(i32 noundef %22) #7
  %24 = getelementptr inbounds %struct.led_trigger_cpu, ptr %6, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = select i1 %14, i32 255, i32 0
  tail call void @led_trigger_event(ptr noundef %25, i32 noundef %26) #7
  %27 = load ptr, ptr @trig_cpu_all, align 4
  %28 = mul i32 %20, 255
  %29 = add i32 %28, -1
  %30 = add i32 %29, %23
  %31 = udiv i32 %30, %23
  tail call void @led_trigger_event(ptr noundef %27, i32 noundef %31) #7
  br label %32

32:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ledtrig_cpu_init() #2 section ".init.text" {
  tail call void @led_trigger_register_simple(ptr noundef nonnull @.str, ptr noundef nonnull @trig_cpu_all) #7
  %1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #8
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ult i32 %1, %2
  br i1 %3, label %4, label %21

4:                                                ; preds = %17, %0
  %5 = phi i32 [ %18, %17 ], [ %2, %0 ]
  %6 = phi i32 [ %19, %17 ], [ %1, %0 ]
  %7 = icmp sgt i32 %6, 7
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, ptrtoint (ptr @cpu_trig to i32)
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.led_trigger_cpu, ptr %12, i32 0, i32 1
  %14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %13, i32 noundef 8, ptr noundef nonnull @.str.1, i32 noundef %6)
  %15 = getelementptr inbounds %struct.led_trigger_cpu, ptr %12, i32 0, i32 2
  tail call void @led_trigger_register_simple(ptr noundef %13, ptr noundef %15) #7
  %16 = load i32, ptr @nr_cpu_ids, align 4
  br label %17

17:                                               ; preds = %8, %4
  %18 = phi i32 [ %5, %4 ], [ %16, %8 ]
  %19 = tail call i32 @cpumask_next(i32 noundef %6, ptr noundef nonnull @__cpu_possible_mask) #8
  %20 = icmp ult i32 %19, %18
  br i1 %20, label %4, label %21

21:                                               ; preds = %17, %0
  tail call void @register_syscore_ops(ptr noundef nonnull @ledtrig_cpu_syscore_ops) #7
  %22 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.2, i1 noundef zeroext true, ptr noundef nonnull @ledtrig_online_cpu, ptr noundef nonnull @ledtrig_prepare_down_cpu, i1 noundef zeroext false) #7
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %22) #9
  br label %26

26:                                               ; preds = %24, %21
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_register_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ledtrig_online_cpu(i32 noundef %0) #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #3, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr @cpu_trig to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i8, ptr %6, align 4, !range !10
  %8 = icmp eq i8 %7, 1
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  store i8 1, ptr %6, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @num_active_cpus) #7, !srcloc !11
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @num_active_cpus, ptr nonnull @num_active_cpus, i32 1, ptr nonnull elementtype(i32) @num_active_cpus) #7, !srcloc !12
  %11 = load volatile i32, ptr @num_active_cpus, align 4
  %12 = load i32, ptr @__cpu_present_mask, align 4
  %13 = and i32 %12, 65535
  %14 = tail call i32 @__sw_hweight32(i32 noundef %13) #7
  %15 = getelementptr inbounds %struct.led_trigger_cpu, ptr %6, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void @led_trigger_event(ptr noundef %16, i32 noundef 255) #7
  %17 = load ptr, ptr @trig_cpu_all, align 4
  %18 = mul i32 %11, 255
  %19 = add i32 %18, -1
  %20 = add i32 %19, %14
  %21 = udiv i32 %20, %14
  tail call void @led_trigger_event(ptr noundef %17, i32 noundef %21) #7
  br label %22

22:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ledtrig_prepare_down_cpu(i32 noundef %0) #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #3, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr @cpu_trig to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i8, ptr %6, align 4, !range !10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  store i8 0, ptr %6, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @num_active_cpus) #7, !srcloc !11
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @num_active_cpus, ptr nonnull @num_active_cpus, i32 -1, ptr nonnull elementtype(i32) @num_active_cpus) #7, !srcloc !12
  %11 = load volatile i32, ptr @num_active_cpus, align 4
  %12 = load i32, ptr @__cpu_present_mask, align 4
  %13 = and i32 %12, 65535
  %14 = tail call i32 @__sw_hweight32(i32 noundef %13) #7
  %15 = getelementptr inbounds %struct.led_trigger_cpu, ptr %6, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void @led_trigger_event(ptr noundef %16, i32 noundef 0) #7
  %17 = load ptr, ptr @trig_cpu_all, align 4
  %18 = mul i32 %11, 255
  %19 = add i32 %18, -1
  %20 = add i32 %19, %14
  %21 = udiv i32 %20, %14
  tail call void @led_trigger_event(ptr noundef %17, i32 noundef %21) #7
  br label %22

22:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ledtrig_cpu_syscore_suspend() #0 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #3, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @cpu_trig to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %0
  store i8 0, ptr %5, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @num_active_cpus) #7, !srcloc !11
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @num_active_cpus, ptr nonnull @num_active_cpus, i32 -1, ptr nonnull elementtype(i32) @num_active_cpus) #7, !srcloc !12
  %10 = load volatile i32, ptr @num_active_cpus, align 4
  %11 = load i32, ptr @__cpu_present_mask, align 4
  %12 = and i32 %11, 65535
  %13 = tail call i32 @__sw_hweight32(i32 noundef %12) #7
  %14 = getelementptr inbounds %struct.led_trigger_cpu, ptr %5, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void @led_trigger_event(ptr noundef %15, i32 noundef 0) #7
  %16 = load ptr, ptr @trig_cpu_all, align 4
  %17 = mul i32 %10, 255
  %18 = add i32 %17, -1
  %19 = add i32 %18, %13
  %20 = udiv i32 %19, %13
  tail call void @led_trigger_event(ptr noundef %16, i32 noundef %20) #7
  br label %21

21:                                               ; preds = %8, %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ledtrig_cpu_syscore_resume() #0 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #3, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @cpu_trig to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %21, label %8

8:                                                ; preds = %0
  store i8 1, ptr %5, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @num_active_cpus) #7, !srcloc !11
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @num_active_cpus, ptr nonnull @num_active_cpus, i32 1, ptr nonnull elementtype(i32) @num_active_cpus) #7, !srcloc !12
  %10 = load volatile i32, ptr @num_active_cpus, align 4
  %11 = load i32, ptr @__cpu_present_mask, align 4
  %12 = and i32 %11, 65535
  %13 = tail call i32 @__sw_hweight32(i32 noundef %12) #7
  %14 = getelementptr inbounds %struct.led_trigger_cpu, ptr %5, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void @led_trigger_event(ptr noundef %15, i32 noundef 255) #7
  %16 = load ptr, ptr @trig_cpu_all, align 4
  %17 = mul i32 %10, 255
  %18 = add i32 %17, -1
  %19 = add i32 %18, %13
  %20 = udiv i32 %19, %13
  tail call void @led_trigger_event(ptr noundef %16, i32 noundef %20) #7
  br label %21

21:                                               ; preds = %8, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ledtrig_cpu_syscore_shutdown() #0 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #3, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @cpu_trig to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %0
  store i8 0, ptr %5, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @num_active_cpus) #7, !srcloc !11
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @num_active_cpus, ptr nonnull @num_active_cpus, i32 -1, ptr nonnull elementtype(i32) @num_active_cpus) #7, !srcloc !12
  %10 = load volatile i32, ptr @num_active_cpus, align 4
  %11 = load i32, ptr @__cpu_present_mask, align 4
  %12 = and i32 %11, 65535
  %13 = tail call i32 @__sw_hweight32(i32 noundef %12) #7
  %14 = getelementptr inbounds %struct.led_trigger_cpu, ptr %5, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void @led_trigger_event(ptr noundef %15, i32 noundef 0) #7
  %16 = load ptr, ptr @trig_cpu_all, align 4
  %17 = mul i32 %10, 255
  %18 = add i32 %17, -1
  %19 = add i32 %18, %13
  %20 = udiv i32 %19, %13
  tail call void @led_trigger_event(ptr noundef %16, i32 noundef %20) #7
  br label %21

21:                                               ; preds = %8, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { cold nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 326384}
!10 = !{i8 0, i8 2}
!11 = !{i64 412445, i64 2147902416, i64 2147902442, i64 2147902489, i64 2147902511, i64 2147902539, i64 2147902559}
!12 = !{i64 2147914628, i64 2147914654, i64 2147914683, i64 2147914717, i64 2147914748, i64 2147914771}
