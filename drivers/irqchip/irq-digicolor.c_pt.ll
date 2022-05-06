; ModuleID = '/llk/IR/drivers/irqchip/irq-digicolor.c_pt.bc'
source_filename = "../drivers/irqchip/irq-digicolor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x ptr] }

@__of_table_conexant_digicolor_ic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cnxt,cx92755-ic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @digicolor_of_init }, section "__irqchip_of_table", align 4
@.str = private unnamed_addr constant [36 x i8] c"\013%pOF: unable to map IC registers\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\013%pOF: unable to map UC registers\0A\00", align 1
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@digicolor_irq_domain = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"\013%pOF: unable to create IRQ domain\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"digicolor_irq\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"\013%pOF: unable to allocate IRQ gc\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_conexant_digicolor_ic], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @digicolor_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #6
  br label %47

7:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %8 = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %9 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #5, !srcloc !9
  %10 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0) #6
  %14 = ptrtoint ptr %10 to i32
  br label %47

15:                                               ; preds = %7
  %16 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 4, i32 noundef 1) #5
  %17 = icmp eq ptr %0, null
  %18 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %19 = select i1 %17, ptr null, ptr %18
  %20 = tail call ptr @__irq_domain_add(ptr noundef %19, i32 noundef 64, i32 noundef 64, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #5
  store ptr %20, ptr @digicolor_irq_domain, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %0) #6
  br label %47

24:                                               ; preds = %15
  %25 = tail call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %20, i32 noundef 32, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @handle_level_irq, i32 noundef 7168, i32 noundef 0, i32 noundef 0) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %0) #6
  br label %47

29:                                               ; preds = %24
  %30 = load ptr, ptr @digicolor_irq_domain, align 4
  %31 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %30, i32 noundef 0) #5
  %32 = getelementptr inbounds %struct.irq_chip_generic, ptr %31, i32 0, i32 1
  store ptr %3, ptr %32, align 4
  %33 = getelementptr inbounds %struct.irq_chip_generic, ptr %31, i32 2, i32 17
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.irq_chip_generic, ptr %31, i32 2, i32 16
  store i32 16, ptr %34, align 4
  %35 = getelementptr inbounds %struct.irq_chip_generic, ptr %31, i32 1, i32 6
  store ptr @irq_gc_ack_set_bit, ptr %35, align 4
  %36 = getelementptr inbounds %struct.irq_chip_generic, ptr %31, i32 1, i32 7
  store ptr @irq_gc_mask_clr_bit, ptr %36, align 4
  %37 = getelementptr inbounds %struct.irq_chip_generic, ptr %31, i32 1, i32 9
  store ptr @irq_gc_mask_set_bit, ptr %37, align 4
  %38 = load ptr, ptr @digicolor_irq_domain, align 4
  %39 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %38, i32 noundef 32) #5
  %40 = getelementptr inbounds %struct.irq_chip_generic, ptr %39, i32 0, i32 1
  store ptr %3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.irq_chip_generic, ptr %39, i32 2, i32 17
  store i32 4, ptr %41, align 4
  %42 = getelementptr inbounds %struct.irq_chip_generic, ptr %39, i32 2, i32 16
  store i32 20, ptr %42, align 4
  %43 = getelementptr inbounds %struct.irq_chip_generic, ptr %39, i32 1, i32 6
  store ptr @irq_gc_ack_set_bit, ptr %43, align 4
  %44 = getelementptr inbounds %struct.irq_chip_generic, ptr %39, i32 1, i32 7
  store ptr @irq_gc_mask_clr_bit, ptr %44, align 4
  %45 = getelementptr inbounds %struct.irq_chip_generic, ptr %39, i32 1, i32 9
  store ptr @irq_gc_mask_set_bit, ptr %45, align 4
  %46 = tail call i32 @set_handle_irq(ptr noundef nonnull @digicolor_handle_irq) #6
  br label %47

47:                                               ; preds = %29, %27, %22, %12, %5
  %48 = phi i32 [ %14, %12 ], [ %25, %27 ], [ 0, %29 ], [ -12, %22 ], [ -6, %5 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @digicolor_handle_irq(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr @digicolor_irq_domain, align 4
  %3 = getelementptr inbounds %struct.irq_domain, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 1
  br label %9

9:                                                ; preds = %39, %1
  %10 = load ptr, ptr %7, align 4
  %11 = icmp eq ptr %10, null
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr i8, ptr %12, i32 24
  br i1 %11, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call i32 %10(ptr noundef %13) #5
  br label %18

16:                                               ; preds = %9
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @llvm.cttz.i32(i32 %19, i1 true), !range !13
  br label %39

23:                                               ; preds = %18
  %24 = load ptr, ptr %7, align 4
  %25 = icmp eq ptr %24, null
  %26 = load ptr, ptr %8, align 4
  %27 = getelementptr i8, ptr %26, i32 28
  br i1 %25, label %30, label %28

28:                                               ; preds = %23
  %29 = tail call i32 %24(ptr noundef %27) #5
  br label %32

30:                                               ; preds = %23
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @llvm.cttz.i32(i32 %33, i1 true), !range !13
  %37 = or i32 %36, 32
  br label %39

38:                                               ; preds = %32
  ret void

39:                                               ; preds = %35, %21
  %40 = phi i32 [ %22, %21 ], [ %37, %35 ]
  %41 = load ptr, ptr @digicolor_irq_domain, align 4
  %42 = tail call i32 @generic_handle_domain_irq(ptr noundef %41, i32 noundef %40) #5
  br label %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_ack_set_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2152223143}
!9 = !{i64 362265}
!10 = !{i64 2152223452}
!11 = !{i64 362683}
!12 = !{i64 2150468396}
!13 = !{i32 0, i32 33}
