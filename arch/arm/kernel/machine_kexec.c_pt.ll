; ModuleID = '/llk/IR/arch/arm/kernel/machine_kexec.c_pt.bc'
source_filename = "../arch/arm/kernel/machine_kexec.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kimage = type { i32, ptr, ptr, i32, ptr, ptr, ptr, i32, [16 x %struct.kexec_segment], %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, %struct.kimage_arch, ptr, i32, i32 }
%struct.kexec_segment = type { %union.anon.64, i32, i32, i32 }
%union.anon.64 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.kimage_arch = type { i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pt_regs = type { [18 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.kexec_relocate_data = type { i32, i32, i32, i32 }

@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@.str = private unnamed_addr constant [72 x i8] c"\017CPU %u will stop doing anything useful since another CPU has crashed\0A\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@waiting_for_crash_ipi = internal global %struct.atomic_t zeroinitializer, align 4
@crash_smp_send_stop.cpus_stopped = internal unnamed_addr global i1 false, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"\014Non-crashing CPUs did not react to IPI\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\016Loading crashdump kernel...\0A\00", align 1
@relocate_new_kernel_size = external dso_local local_unnamed_addr constant i32, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"\016Bye!\0A\00", align 1
@arch_phys_to_idmap_offset = external dso_local local_unnamed_addr global i64, align 8
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @machine_kexec_prepare(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -28672
  %5 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 14
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr @__cpu_possible_mask, align 4
  %7 = and i32 %6, 65535
  %8 = tail call i32 @__sw_hweight32(i32 noundef %7) #10
  %9 = icmp ugt i32 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = tail call i32 @platform_can_secondary_boot() #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @platform_can_cpu_hotplug() #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %52, label %16

16:                                               ; preds = %13, %10, %1
  %17 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %52, label %20

20:                                               ; preds = %46, %16
  %21 = phi i32 [ %47, %46 ], [ 0, %16 ]
  %22 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %21, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %25 = trunc i64 %24 to i32
  %26 = sub i32 %23, %25
  %27 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %21, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = tail call zeroext i1 @memblock_is_region_memory(i32 noundef %26, i32 noundef %28) #10
  br i1 %29, label %30, label %52

30:                                               ; preds = %20
  %31 = getelementptr %struct.kimage, ptr %0, i32 0, i32 8, i32 %21
  %32 = load ptr, ptr %31, align 4
  %33 = tail call ptr @llvm.thread.pointer() #10
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %35 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %34) #8, !srcloc !9
  %36 = and i32 %35, -13
  %37 = or i32 %36, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #10, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !11
  %38 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %32, i32 -1090519041) #10, !srcloc !12
  %39 = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #10, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %30
  %42 = extractvalue { i32, i32 } %38, 1
  %43 = icmp eq i32 %42, -302117424
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, ptr %22, align 4
  store i32 %45, ptr %5, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = add nuw i32 %21, 1
  %48 = load i32, ptr %17, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %20, label %52

50:                                               ; preds = %30
  %51 = extractvalue { i32, i32 } %38, 0
  br label %52

52:                                               ; preds = %50, %46, %20, %16, %13
  %53 = phi i32 [ -22, %13 ], [ 0, %16 ], [ %51, %50 ], [ 0, %46 ], [ -22, %20 ]
  ret i32 %53
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_can_secondary_boot() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_can_cpu_hotplug() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_region_memory(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @machine_kexec_cleanup(ptr nocapture noundef %0) local_unnamed_addr #3 {
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @machine_crash_nonpanic_core(ptr nocapture readnone %0) #4 {
  %2 = alloca %struct.pt_regs, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false), !annotation !13
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #8, !srcloc !14
  %6 = add i32 %5, ptrtoint (ptr @__irq_regs to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, ptr noundef nonnull align 4 dereferenceable(72) %8, i32 72, i1 false) #10
  br label %20

11:                                               ; preds = %1
  %12 = getelementptr inbounds [18 x i32], ptr %2, i32 0, i32 15
  %13 = getelementptr inbounds [18 x i32], ptr %2, i32 0, i32 16
  %14 = getelementptr inbounds [18 x i32], ptr %2, i32 0, i32 13
  %15 = getelementptr inbounds [18 x i32], ptr %2, i32 0, i32 14
  %16 = call { i32, i32, i32 } asm sideeffect "stmia\09$4, {r0-r12}\0A\09mov\09$2, sp\0A\09str\09lr, $3\0A\09adr\09$0, 1f\0A\09mrs\09$1, cpsr\0A\091:", "=r,=r,=r,=*o,r,~{memory}"(ptr elementtype(i32) %15, ptr nonnull %2) #10, !srcloc !15
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = extractvalue { i32, i32, i32 } %16, 1
  %19 = extractvalue { i32, i32, i32 } %16, 2
  store i32 %17, ptr %12, align 4
  store i32 %18, ptr %13, align 4
  store i32 %19, ptr %14, align 4
  br label %20

20:                                               ; preds = %11, %10
  %21 = tail call ptr @llvm.thread.pointer() #10
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %23) #11
  %25 = load i32, ptr %22, align 8
  call void @crash_save_cpu(ptr noundef nonnull %2, i32 noundef %25) #10
  %26 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  call void %26() #10
  %27 = load i32, ptr %22, align 8
  call void @set_cpu_online(i32 noundef %27, i1 noundef zeroext false) #10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @waiting_for_crash_ipi) #10, !srcloc !16
  %28 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @waiting_for_crash_ipi, ptr nonnull @waiting_for_crash_ipi, i32 1, ptr nonnull elementtype(i32) @waiting_for_crash_ipi) #10, !srcloc !17
  br label %29

29:                                               ; preds = %29, %20
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !19
  call void asm sideeffect "wfe", "~{memory}"() #10, !srcloc !20
  br label %29
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crash_save_cpu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cpu_online(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crash_smp_send_stop() local_unnamed_addr #0 {
  %1 = load i1, ptr @crash_smp_send_stop.cpus_stopped, align 4
  br i1 %1, label %21, label %2

2:                                                ; preds = %0
  %3 = load volatile i32, ptr @__num_online_cpus, align 4
  %4 = add i32 %3, -1
  store volatile i32 %4, ptr @waiting_for_crash_ipi, align 4
  tail call void @smp_call_function(ptr noundef nonnull @machine_crash_nonpanic_core, ptr noundef null, i32 noundef 0) #10
  %5 = load volatile i32, ptr @waiting_for_crash_ipi, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %7, %2
  %8 = phi i32 [ %10, %7 ], [ 1000, %2 ]
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #10
  %10 = add nsw i32 %8, -1
  %11 = load volatile i32, ptr @waiting_for_crash_ipi, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = icmp ne i32 %10, 0
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %7, label %15

15:                                               ; preds = %7, %2
  %16 = load volatile i32, ptr @waiting_for_crash_ipi, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %20

20:                                               ; preds = %18, %15
  store i1 true, ptr @crash_smp_send_stop.cpus_stopped, align 4
  br label %21

21:                                               ; preds = %20, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_call_function(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @machine_crash_shutdown(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #10, !srcloc !21
  %2 = load i1, ptr @crash_smp_send_stop.cpus_stopped, align 4
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = load volatile i32, ptr @__num_online_cpus, align 4
  %5 = add i32 %4, -1
  store volatile i32 %5, ptr @waiting_for_crash_ipi, align 4
  tail call void @smp_call_function(ptr noundef nonnull @machine_crash_nonpanic_core, ptr noundef null, i32 noundef 0) #10
  %6 = load volatile i32, ptr @waiting_for_crash_ipi, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %8, %3
  %9 = phi i32 [ %11, %8 ], [ 1000, %3 ]
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #10
  %11 = add nsw i32 %9, -1
  %12 = load volatile i32, ptr @waiting_for_crash_ipi, align 4
  %13 = icmp sgt i32 %12, 0
  %14 = icmp ne i32 %11, 0
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %8, label %16

16:                                               ; preds = %8, %3
  %17 = load volatile i32, ptr @waiting_for_crash_ipi, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %21

21:                                               ; preds = %19, %16
  store i1 true, ptr @crash_smp_send_stop.cpus_stopped, align 4
  br label %22

22:                                               ; preds = %21, %1
  %23 = tail call ptr @llvm.thread.pointer() #10
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  tail call void @crash_save_cpu(ptr noundef %0, i32 noundef %25) #10
  %26 = tail call ptr @irq_to_desc(i32 noundef 0) #10
  %27 = load i32, ptr @nr_irqs, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %72, label %29

29:                                               ; preds = %67, %22
  %30 = phi ptr [ %69, %67 ], [ %26, %22 ]
  %31 = phi i32 [ %68, %67 ], [ 0, %22 ]
  %32 = icmp eq ptr %30, null
  br i1 %32, label %67, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.irq_desc, ptr %30, i32 0, i32 1, i32 4
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %67, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.irq_chip, ptr %35, i32 0, i32 10
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.irq_desc, ptr %30, i32 0, i32 1, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 262144
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.irq_desc, ptr %30, i32 0, i32 1
  tail call void %39(ptr noundef %48) #10
  br label %49

49:                                               ; preds = %47, %41, %37
  %50 = getelementptr inbounds %struct.irq_chip, ptr %35, i32 0, i32 7
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.irq_desc, ptr %30, i32 0, i32 1
  tail call void %51(ptr noundef %54) #10
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr inbounds %struct.irq_chip, ptr %35, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.irq_desc, ptr %30, i32 0, i32 1, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 65536
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.irq_desc, ptr %30, i32 0, i32 1
  tail call void %57(ptr noundef %66) #10
  br label %67

67:                                               ; preds = %65, %59, %55, %33, %29
  %68 = add nuw i32 %31, 1
  %69 = tail call ptr @irq_to_desc(i32 noundef %68) #10
  %70 = load i32, ptr @nr_irqs, align 4
  %71 = icmp ult i32 %68, %70
  br i1 %71, label %29, label %72

72:                                               ; preds = %67, %22
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @machine_kexec(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr @__num_online_cpus, align 4
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %4, label %5, !prof !22

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/machine_kexec.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 163, 0\0A.popsection", ""() #10, !srcloc !23
  unreachable

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 4
  %7 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @page_address(ptr noundef %8) #10
  %10 = tail call i32 asm "", "=r,0"(ptr nonnull @relocate_new_kernel) #12, !srcloc !24
  %11 = ptrtoint ptr %9 to i32
  %12 = and i32 %11, 7
  %13 = icmp ne i32 %12, 0
  %14 = and i32 %10, 6
  %15 = icmp ne i32 %14, 0
  %16 = select i1 %13, i1 true, i1 %15, !prof !22
  br i1 %16, label %17, label %18, !prof !22

17:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/machine_kexec.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 172, 0\0A.popsection", ""() #10, !srcloc !25
  unreachable

18:                                               ; preds = %5
  %19 = and i32 %10, -2
  %20 = and i32 %6, -4096
  %21 = inttoptr i32 %19 to ptr
  %22 = load i32, ptr @relocate_new_kernel_size, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %9, ptr align 2 %21, i32 %22, i1 false)
  %23 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %24 = add i32 %22, %11
  tail call void %23(i32 noundef %11, i32 noundef %24) #10
  %25 = and i32 %10, 1
  %26 = or i32 %25, %11
  %27 = tail call ptr asm "", "=r,0"(i32 %26) #12, !srcloc !26
  %28 = getelementptr i8, ptr %9, i32 %22
  %29 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.kexec_relocate_data, ptr %28, i32 0, i32 1
  store i32 %20, ptr %31, align 4
  %32 = getelementptr inbounds %struct.kexec_relocate_data, ptr %28, i32 0, i32 2
  store i32 452, ptr %32, align 4
  %33 = getelementptr inbounds %struct.kimage, ptr %0, i32 0, i32 14
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.kexec_relocate_data, ptr %28, i32 0, i32 3
  store i32 %34, ptr %35, align 4
  %36 = ptrtoint ptr %27 to i32
  %37 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %36, i32 -2130706432, i32 8454144) #12, !srcloc !27
  %38 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %39 = trunc i64 %38 to i32
  %40 = add i32 %37, %39
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  tail call void @soft_restart(i32 noundef %40) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @relocate_new_kernel() #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @soft_restart(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @arch_crash_save_vmcoreinfo() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

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
!9 = !{i64 4000613}
!10 = !{i64 4000810}
!11 = !{i64 2151486089}
!12 = !{i64 2153165272, i64 2153165552, i64 2153165886, i64 2153166220}
!13 = !{!"auto-init"}
!14 = !{i64 767650}
!15 = !{i64 4971694, i64 4971725, i64 4971753, i64 4971781, i64 4971809, i64 4971841}
!16 = !{i64 843272, i64 2148333243, i64 2148333269, i64 2148333316, i64 2148333338, i64 2148333366, i64 2148333386}
!17 = !{i64 2148347015, i64 2148347041, i64 2148347070, i64 2148347104, i64 2148347135, i64 2148347158}
!18 = !{i64 2153170082}
!19 = !{i64 2153169924}
!20 = !{i64 2153170141}
!21 = !{i64 749385}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 2153173072, i64 2153173568, i64 2153173109, i64 2153173165, i64 2153173199, i64 2153173223, i64 2153173264, i64 2153173285, i64 2153173313, i64 2153173347}
!24 = !{i64 2153173948}
!25 = !{i64 2153175221, i64 2153175717, i64 2153175258, i64 2153175314, i64 2153175348, i64 2153175372, i64 2153175413, i64 2153175434, i64 2153175462, i64 2153175496}
!26 = !{i64 2153174443}
!27 = !{i64 2148779834, i64 2148779857, i64 2148779889, i64 2148779921, i64 2148779959, i64 2148779989}
