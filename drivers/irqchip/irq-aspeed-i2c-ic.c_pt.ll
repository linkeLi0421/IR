; ModuleID = '/llk/IR/drivers/irqchip/irq-aspeed-i2c-ic.c_pt.bc'
source_filename = "../drivers/irqchip/irq-aspeed-i2c-ic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.aspeed_i2c_ic = type { ptr, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }

@__of_table_ast2400_i2c_ic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-i2c-ic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aspeed_i2c_ic_of_init }, section "__irqchip_of_table", align 4
@__of_table_ast2500_i2c_ic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-i2c-ic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aspeed_i2c_ic_of_init }, section "__irqchip_of_table", align 4
@aspeed_i2c_ic_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @aspeed_i2c_ic_map_irq_domain, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [18 x i8] c"aspeed-i2c-domain\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"\016i2c controller registered, irq %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dummy_irq_chip = external dso_local global %struct.irq_chip, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_ast2400_i2c_ic, ptr @__of_table_ast2500_i2c_ic], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @aspeed_i2c_ic_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 12) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #7
  store ptr %7, ptr %4, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #7
  %11 = getelementptr inbounds %struct.aspeed_i2c_ic, ptr %4, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = icmp slt i32 %10, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %0, null
  %15 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %16 = select i1 %14, ptr null, ptr %15
  %17 = tail call ptr @__irq_domain_add(ptr noundef %16, i32 noundef 14, i32 noundef 14, i32 noundef 0, ptr noundef nonnull @aspeed_i2c_ic_irq_domain_ops, ptr noundef null) #7
  %18 = getelementptr inbounds %struct.aspeed_i2c_ic, ptr %4, i32 0, i32 2
  store ptr %17, ptr %18, align 8
  %19 = icmp eq ptr %17, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.irq_domain, ptr %17, i32 0, i32 1
  store ptr @.str, ptr %21, align 4
  %22 = load i32, ptr %11, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %22, ptr noundef nonnull @aspeed_i2c_ic_irq_handler, ptr noundef nonnull %4) #7
  %23 = load i32, ptr %11, align 4
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %23) #8
  br label %29

25:                                               ; preds = %13, %9
  %26 = phi i32 [ %10, %9 ], [ -12, %13 ]
  tail call void @iounmap(ptr noundef nonnull %7) #7
  br label %27

27:                                               ; preds = %25, %6
  %28 = phi i32 [ %26, %25 ], [ -12, %6 ]
  tail call void @kfree(ptr noundef nonnull %4) #7
  br label %29

29:                                               ; preds = %27, %20, %2
  %30 = phi i32 [ %28, %27 ], [ 0, %20 ], [ -12, %2 ]
  ret i32 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_i2c_ic_irq_handler(ptr noundef %0) #3 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  %7 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %12(ptr noundef %15) #7
  br label %24

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %18(ptr noundef %19) #7
  %20 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void %21(ptr noundef %19) #7
  br label %24

24:                                               ; preds = %23, %16, %14, %1
  %25 = load ptr, ptr %4, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  store i32 %26, ptr %2, align 4
  %27 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 14, i32 noundef 0) #7
  %28 = icmp ult i32 %27, 14
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.aspeed_i2c_ic, ptr %4, i32 0, i32 2
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi i32 [ %27, %29 ], [ %36, %31 ]
  %33 = load ptr, ptr %30, align 4
  %34 = call i32 @generic_handle_domain_irq(ptr noundef %33, i32 noundef %32) #7
  %35 = add nuw nsw i32 %32, 1
  %36 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 14, i32 noundef %35) #7
  %37 = icmp ult i32 %36, 14
  br i1 %37, label %31, label %38

38:                                               ; preds = %31, %24
  %39 = load ptr, ptr %7, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 9
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi ptr [ %43, %41 ], [ %39, %38 ]
  %46 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %45(ptr noundef %46) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_i2c_ic_map_irq_domain(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @dummy_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #7
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 2458871}
!9 = !{i64 2152007196}
