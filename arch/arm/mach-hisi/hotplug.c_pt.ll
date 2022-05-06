; ModuleID = '/llk/IR/arch/arm/mach-hisi/hotplug.c_pt.bc'
source_filename = "../arch/arm/mach-hisi/hotplug.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ctrl_base = internal unnamed_addr global ptr null, align 4
@id = internal unnamed_addr global i1 false, align 4
@.str = private unnamed_addr constant [24 x i8] c"hisilicon,hip01-sysctrl\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"cpu %d unexpectedly exit from shutdown\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"hisilicon,sysctrl\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"hisilicon,cpuctrl\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hi3xxx_set_cpu(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @ctrl_base, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i1 true, ptr @id, align 4
  br label %77

9:                                                ; preds = %5
  %10 = tail call ptr @of_iomap(ptr noundef nonnull %6, i32 noundef 0) #4
  store ptr %10, ptr @ctrl_base, align 4
  tail call void @of_node_put(ptr noundef nonnull %6) #4
  %11 = load ptr, ptr @ctrl_base, align 4
  %12 = icmp eq ptr %11, null
  store i1 %12, ptr @id, align 4
  br i1 %12, label %77, label %15

13:                                               ; preds = %2
  %14 = load i1, ptr @id, align 4
  br i1 %14, label %77, label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %11, %9 ], [ %3, %13 ]
  br i1 %1, label %17, label %50

17:                                               ; preds = %15
  %18 = and i32 %0, -2
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = shl nuw nsw i32 8, %0
  %22 = getelementptr i8, ptr %16, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #4, !srcloc !8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 21474800) #4
  %25 = shl nuw i32 1, %0
  %26 = load ptr, ptr @ctrl_base, align 4
  %27 = getelementptr i8, ptr %26, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #4, !srcloc !8
  %28 = shl i32 4113, %0
  %29 = load ptr, ptr @ctrl_base, align 4
  %30 = getelementptr i8, ptr %29, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #4, !srcloc !8
  %31 = shl i32 4198417, %0
  %32 = load ptr, ptr @ctrl_base, align 4
  %33 = getelementptr i8, ptr %32, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #4, !srcloc !8
  br i1 %19, label %34, label %38

34:                                               ; preds = %23
  %35 = shl nuw nsw i32 8, %0
  %36 = load ptr, ptr @ctrl_base, align 4
  %37 = getelementptr i8, ptr %36, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #4, !srcloc !8
  br label %38

38:                                               ; preds = %34, %23
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #4
  %40 = load ptr, ptr @ctrl_base, align 4
  %41 = getelementptr i8, ptr %40, i32 512
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #4, !srcloc !9
  %43 = shl i32 268435456, %0
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = load ptr, ptr @ctrl_base, align 4
  %47 = getelementptr i8, ptr %46, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #4, !srcloc !8
  %48 = load ptr, ptr @ctrl_base, align 4
  %49 = getelementptr i8, ptr %48, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %31) #4, !srcloc !8
  br label %77

50:                                               ; preds = %15
  %51 = getelementptr i8, ptr %16, i32 512
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #4, !srcloc !9
  %53 = shl i32 268435456, %0
  %54 = or i32 %52, %53
  %55 = load ptr, ptr @ctrl_base, align 4
  %56 = getelementptr i8, ptr %55, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #4, !srcloc !8
  %57 = shl nuw i32 1, %0
  %58 = load ptr, ptr @ctrl_base, align 4
  %59 = getelementptr i8, ptr %58, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #4, !srcloc !8
  %60 = and i32 %0, -2
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %73

62:                                               ; preds = %50
  %63 = shl nuw nsw i32 8, %0
  %64 = load ptr, ptr @ctrl_base, align 4
  %65 = getelementptr i8, ptr %64, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #4, !srcloc !8
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748) #4
  %67 = shl nuw nsw i32 4198417, %0
  %68 = load ptr, ptr @ctrl_base, align 4
  %69 = getelementptr i8, ptr %68, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #4, !srcloc !8
  %70 = load ptr, ptr @ctrl_base, align 4
  %71 = getelementptr i8, ptr %70, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %63) #4, !srcloc !8
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 21474800) #4
  br label %77

73:                                               ; preds = %50
  %74 = shl i32 4198417, %0
  %75 = load ptr, ptr @ctrl_base, align 4
  %76 = getelementptr i8, ptr %75, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #4, !srcloc !8
  br label %77

77:                                               ; preds = %73, %62, %38, %13, %9, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hix5hd2_set_cpu(i32 %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @ctrl_base, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @of_iomap(ptr noundef nonnull %6, i32 noundef 0) #4
  store ptr %9, ptr @ctrl_base, align 4
  tail call void @of_node_put(ptr noundef nonnull %6) #4
  %10 = load ptr, ptr @ctrl_base, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-hisi/hotplug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 197, 0\0A.popsection", ""() #4, !srcloc !10
  unreachable

13:                                               ; preds = %8, %2
  %14 = phi ptr [ %10, %8 ], [ %3, %2 ]
  %15 = getelementptr i8, ptr %14, i32 4096
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4
  %17 = and i32 %16, -393
  br i1 %1, label %18, label %28

18:                                               ; preds = %13
  %19 = or i32 %17, 128
  %20 = load ptr, ptr @ctrl_base, align 4
  %21 = getelementptr i8, ptr %20, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #4, !srcloc !8
  %22 = load ptr, ptr @ctrl_base, align 4
  %23 = getelementptr i8, ptr %22, i32 80
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #4, !srcloc !9
  %25 = and i32 %24, -131073
  %26 = load ptr, ptr @ctrl_base, align 4
  %27 = getelementptr i8, ptr %26, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #4, !srcloc !8
  br label %38

28:                                               ; preds = %13
  %29 = or i32 %17, 136
  %30 = load ptr, ptr @ctrl_base, align 4
  %31 = getelementptr i8, ptr %30, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #4, !srcloc !8
  %32 = load ptr, ptr @ctrl_base, align 4
  %33 = getelementptr i8, ptr %32, i32 80
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #4, !srcloc !9
  %35 = or i32 %34, 131072
  %36 = load ptr, ptr @ctrl_base, align 4
  %37 = getelementptr i8, ptr %36, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #4, !srcloc !8
  br label %38

38:                                               ; preds = %28, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hip01_set_cpu(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @ctrl_base, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-hisi/hotplug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 230, 0\0A.popsection", ""() #4, !srcloc !12
  unreachable

9:                                                ; preds = %5
  %10 = tail call ptr @of_iomap(ptr noundef nonnull %6, i32 noundef 0) #4
  store ptr %10, ptr @ctrl_base, align 4
  tail call void @of_node_put(ptr noundef nonnull %6) #4
  %11 = load ptr, ptr @ctrl_base, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !11

13:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-hisi/hotplug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 233, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

14:                                               ; preds = %9, %2
  %15 = phi ptr [ %11, %9 ], [ %3, %2 ]
  br i1 %1, label %16, label %29

16:                                               ; preds = %14
  %17 = getelementptr i8, ptr %15, i32 80
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !9
  %19 = or i32 %18, 2
  %20 = load ptr, ptr @ctrl_base, align 4
  %21 = getelementptr i8, ptr %20, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #4, !srcloc !8
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 10737400) #4
  %23 = load ptr, ptr @ctrl_base, align 4
  %24 = getelementptr i8, ptr %23, i32 80
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #4, !srcloc !9
  %26 = and i32 %25, -3
  %27 = load ptr, ptr @ctrl_base, align 4
  %28 = getelementptr i8, ptr %27, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #4, !srcloc !8
  br label %29

29:                                               ; preds = %16, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hi3xxx_cpu_die(i32 noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %2() #4
  %3 = tail call i32 asm sideeffect "\09mrc\09p15, 0, $0, c1, c0, 1\0A\09bic\09$0, $0, #0x40\0A\09mcr\09p15, 0, $0, c1, c0, 1\0A\09mrc\09p15, 0, $0, c1, c0, 0\0A\09bic\09$0, $0, #0x04\0A\09mcr\09p15, 0, $0, c1, c0, 0\0A", "=&r,r,~{cc}"(i32 0) #4, !srcloc !14
  %4 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 0, i32 -2130706432, i32 8454144) #5, !srcloc !15
  %5 = inttoptr i32 %4 to ptr
  tail call void @hi3xxx_set_cpu_jump(i32 noundef %0, ptr noundef %5) #4
  %6 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %7 = tail call i32 %6() #4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1, i32 noundef %0) #6
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hi3xxx_set_cpu_jump(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hi3xxx_cpu_kill(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = add i32 %2, 5
  br label %4

4:                                                ; preds = %7, %1
  %5 = tail call i32 @hi3xxx_get_cpu_jump(i32 noundef %0) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = sub i32 %3, %8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %12, label %4

11:                                               ; preds = %4
  tail call void @hi3xxx_set_cpu(i32 noundef %0, i1 noundef zeroext false)
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi i32 [ 1, %11 ], [ 0, %7 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hi3xxx_get_cpu_jump(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hix5hd2_cpu_die(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %2() #4
  %3 = load ptr, ptr @ctrl_base, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @of_iomap(ptr noundef nonnull %6, i32 noundef 0) #4
  store ptr %9, ptr @ctrl_base, align 4
  tail call void @of_node_put(ptr noundef nonnull %6) #4
  %10 = load ptr, ptr @ctrl_base, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-hisi/hotplug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 197, 0\0A.popsection", ""() #4, !srcloc !10
  unreachable

13:                                               ; preds = %8, %1
  %14 = phi ptr [ %10, %8 ], [ %3, %1 ]
  %15 = getelementptr i8, ptr %14, i32 4096
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4
  %17 = and i32 %16, -393
  %18 = or i32 %17, 136
  %19 = load ptr, ptr @ctrl_base, align 4
  %20 = getelementptr i8, ptr %19, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #4, !srcloc !8
  %21 = load ptr, ptr @ctrl_base, align 4
  %22 = getelementptr i8, ptr %21, i32 80
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #4, !srcloc !9
  %24 = or i32 %23, 131072
  %25 = load ptr, ptr @ctrl_base, align 4
  %26 = getelementptr i8, ptr %25, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #4, !srcloc !8
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { cold noreturn nounwind }

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
!8 = !{i64 3654125}
!9 = !{i64 3654543}
!10 = !{i64 2152715040, i64 2152715533, i64 2152715077, i64 2152715133, i64 2152715167, i64 2152715191, i64 2152715232, i64 2152715253, i64 2152715281, i64 2152715315}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2152717511, i64 2152718004, i64 2152717548, i64 2152717604, i64 2152717638, i64 2152717662, i64 2152717703, i64 2152717724, i64 2152717752, i64 2152717786}
!13 = !{i64 2152722611, i64 2152723104, i64 2152722648, i64 2152722704, i64 2152722738, i64 2152722762, i64 2152722803, i64 2152722824, i64 2152722852, i64 2152722886}
!14 = !{i64 5730, i64 5763, i64 5787, i64 5819, i64 5851, i64 5875}
!15 = !{i64 2148785907, i64 2148785930, i64 2148785962, i64 2148785994, i64 2148786032, i64 2148786062}
