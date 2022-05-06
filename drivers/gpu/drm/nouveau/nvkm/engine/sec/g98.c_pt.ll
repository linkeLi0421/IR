; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/sec/g98.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/sec/g98.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.130 = type { ptr, i32 }
%struct.anon.131 = type { ptr, i32 }
%struct.anon.134 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.132, %struct.anon.133, %struct.nvkm_engine }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.anon.132 = type { i32, ptr, i32, i8 }
%struct.anon.133 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.71 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.71 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.123, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.123 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_gpuobj = type { %union.anon.68, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.68 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }

@g98_sec = internal constant { %struct.anon.130, %struct.anon.131, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.134, %struct.anon.134, [2 x %struct.nvkm_sclass] } { %struct.anon.130 { ptr @g98_sec_code, i32 1536 }, %struct.anon.131 { ptr @g98_sec_data, i32 512 }, ptr null, ptr @g98_sec_intr, i32 0, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.anon.134 zeroinitializer, %struct.anon.134 zeroinitializer, [2 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 34996, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4
@g98_sec_code = internal global <{ [326 x i32], [58 x i32] }> <{ [326 x i32] [i32 401605821, i32 1113653, i32 -251656962, i32 -251662313, i32 670105619, i32 567280640, i32 202764480, i32 -268426800, i32 670106391, i32 567284224, i32 271709184, i32 -201313804, i32 250871848, i32 -2147364867, i32 -1341648188, i32 200540196, i32 2617703, i32 2883191, i32 -268433410, i32 602931239, i32 3666181, i32 3460884, i32 -1342093932, i32 418644053, i32 100858391, i32 1257243640, i32 3461150, i32 -805222416, i32 250904628, i32 1077202739, i32 -1342091372, i32 418644213, i32 84081185, i32 1475347448, i32 40366080, i32 -1602726212, i32 -1241415576, i32 -2016409468, i32 23246336, i32 -252700428, i32 902824535, i32 68338816, i32 -184539984, i32 -251601141, i32 -820445129, i32 869220402, i32 -14359552, i32 270841351, i32 129975780, i32 -184527696, i32 -251610869, i32 -235216809, i32 -1342124441, i32 418693188, i32 -1604849331, i32 -2006453764, i32 -2142982144, i32 -1338042124, i32 418668612, i32 1346678809, i32 -244048908, i32 -1121845209, i32 36958260, i32 -184540208, i32 -1342144242, i32 418669380, i32 38114398, i32 -25145161, i32 -2145502736, i32 1085734995, i32 1152778528, i32 4444168, i32 -1201664268, i32 418645062, i32 54834750, i32 -1744812613, i32 1409089861, i32 5550084, i32 1479089140, i32 1180172357, i32 40153089, i32 -1743320076, i32 1744635911, i32 23375876, i32 -114291724, i32 251786325, i32 -2144858380, i32 250871891, i32 19263522, i32 268453873, i32 -805289264, i32 1206927427, i32 315456, i32 -260045617, i32 1152401476, i32 -149163008, i32 486553585, i32 -805222416, i32 298057780, i32 1073860620, i32 955384312, i32 52817921, i32 184567793, i32 -817871153, i32 1204748357, i32 73906240, i32 -1728832524, i32 75498756, i32 553680928, i32 -2145254016, i32 201204486, i32 50632704, i32 -31963978, i32 77070407, i32 -2141720316, i32 39055360, i32 -133806598, i32 -201263101, i32 636485937, i32 87339010, i32 -200140556, i32 883949874, i32 186184706, i32 -2147404048, i32 16254979, i32 -1744436072, i32 1455687429, i32 139835135, i32 -48741194, i32 1207829829, i32 785920, i32 8411121, i32 -100510736, i32 883950949, i32 320599042, i32 77071352, i32 4501537, i32 -2146743056, i32 16254980, i32 -1240440650, i32 1710886992, i32 -1744570363, i32 110632965, i32 72792100, i32 -1744089872, i32 110633221, i32 72792101, i32 -49586960, i32 883950661, i32 190640131, i32 -2147072515, i32 16254980, i32 -251579660, i32 -1121845209, i32 20181044, i32 -134208560, i32 20050944, i32 -1342036496, i32 418647860, i32 20116489, i32 -133364864, i32 3452928, i32 -184873996, i32 1206911804, i32 121892928, i32 -268040966, i32 1139822663, i32 100989446, i32 1022690296, i32 1207026695, i32 1274945792, i32 151296000, i32 -1794505320, i32 1152780376, i32 88669464, i32 -1728096828, i32 127404806, i32 142120204, i32 -48733002, i32 2009335144, i32 218667263, i32 1476560054, i32 -1778800503, i32 -106329768, i32 20771989, i32 1022624760, i32 -133957535, i32 407409923, i32 -1157084780, i32 -2118778731, i32 151552000, i32 -1794504320, i32 1771313256, i32 9943816, i32 -2147450442, i32 159386376, i32 37549068, i32 -263174160, i32 83494467, i32 -133957627, i32 540865792, i32 3995028, i32 3995016, i32 -184485748, i32 -174845892, i32 -125041092, i32 809301248, i32 3995028, i32 3995016, i32 3995088, i32 -184485748, i32 -171411652, i32 -174837700, i32 -175636420, i32 -170655684, i32 -125042628, i32 1077736704, i32 3995028, i32 104658312, i32 1715271084, i32 104658384, i32 -184485748, i32 -171411652, i32 -174829508, i32 -175873476, i32 -175634884, i32 -170631108, i32 -173268932, i32 -125042628, i32 1346172160, i32 3995028, i32 104658312, i32 1715271084, i32 104658384, i32 104658316, i32 -184485716, i32 -171411652, i32 -174829508, i32 -175636420, i32 -170655428, i32 -173271492, i32 -175372740, i32 -122943940, i32 1077736704, i32 1715271060, i32 3995088, i32 104658312, i32 104658348, i32 -184485748, i32 -174833604, i32 -170893252, i32 -175634884, i32 -173252548, i32 -125042628, i32 1077736704, i32 1715271060, i32 3995088, i32 1614607752, i32 3995052, i32 -184485748, i32 -174829508, i32 -170892996, i32 -173009348, i32 -175636420, i32 -173273028, i32 -125042628, i32 809301248, i32 3995028, i32 104658312, i32 1715271084, i32 -184485680, i32 -174821316, i32 -175636420, i32 -173275588, i32 -173277124, i32 -170917828, i32 -172228548, i32 -173275588, i32 -120560068, i32 -2143488768, i32 3995028, i32 104658312, i32 3995052, i32 3995052, i32 3995088, i32 3995068, i32 104658364, i32 1715271084, i32 -1157564208, i32 1207828533, i32 -2137526016, i32 43249664, i32 -133867014, i32 574419971, i32 -184153606, i32 -124252100, i32 273724931, i32 -201043016, i32 1022683419, i32 -133957631, i32 3652352, i32 -251631618, i32 -268402537, i32 1022689939, i32 1022662672, i32 91880033, i32 -200902150, i32 66584892, i32 -1206882122, i32 468976755, i32 -1157564184, i32 -1745813451, i32 -1812987776, i32 4718082, i32 -133867014, i32 557642755, i32 -184153606, i32 -191360964, i32 1744724284, i32 91879936, i32 -200902150, i32 66584892, i32 -1240444746, i32 1404571760, i32 -736365564, i32 248], [58 x i32] zeroinitializer }>, align 4
@g98_sec_data = internal global <{ [99 x i32], [29 x i32] }> <{ [99 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 131084, i32 -256, i32 131088, i32 15, i32 131092, i32 0, i32 402, i32 -2, i32 131096, i32 -256, i32 131100, i32 15, i32 471, i32 -8, i32 608, i32 -1, i32 131136, i32 0, i32 131140, i32 0, i32 131144, i32 0, i32 131148, i32 0, i32 131152, i32 0, i32 131156, i32 0, i32 131160, i32 0, i32 131164, i32 0, i32 131108, i32 -256, i32 131112, i32 15, i32 131116, i32 -256, i32 131120, i32 15, i32 625, i32 -16, i32 66181, i32 -268435441, i32 81462049, i32 78709551, i32 81462073, i32 81462091, i32 81462113, i32 81462135, i32 81462165, i32 81462191, i32 81462221, i32 81462243, i32 81462265, i32 81462287, i32 75695145, i32 75695163, i32 75695197], [29 x i32] zeroinitializer }>, align 4
@g98_sec_isr_error_name = internal constant [5 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.6, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.7, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.8, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.9, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str = private unnamed_addr constant [77 x i8] c"%s: DISPATCH_ERROR %04x [%s] ch %d [%010llx %s] subc %d mthd %04x data %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"ILLEGAL_MTHD\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"INVALID_BITFIELD\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"INVALID_ENUM\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"QUERY\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @g98_sec_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_falcon_new_(ptr noundef nonnull @g98_sec, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true, i32 noundef 552960, ptr noundef %3) #3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @g98_sec_intr(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 15, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 553024
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %9 = and i32 %8, 65535
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 553024
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %13 = lshr i32 %12, 14
  %14 = and i32 %13, 8188
  %15 = lshr i32 %12, 27
  %16 = and i32 %15, 7
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr i8, ptr %17, i32 553028
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %20 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @g98_sec_isr_error_name, i32 noundef %9) #3
  %21 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 15, i32 1, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %51, label %24

24:                                               ; preds = %2
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 15, i32 1, i32 4
  %29 = icmp eq ptr %20, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.nvkm_enum, ptr %20, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %30, %24
  %34 = phi ptr [ %32, %30 ], [ @.str.4, %24 ]
  %35 = icmp eq ptr %1, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %1, i32 0, i32 5
  %38 = load i16, ptr %37, align 8
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %1, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %41, i32 0, i32 4
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %1, i32 0, i32 3, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_client, ptr %45, i32 0, i32 1
  br label %47

47:                                               ; preds = %36, %33
  %48 = phi i64 [ %43, %36 ], [ 0, %33 ]
  %49 = phi i32 [ %39, %36 ], [ -1, %33 ]
  %50 = phi ptr [ %46, %36 ], [ @.str.5, %33 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str, ptr noundef %28, i32 noundef %9, ptr noundef %34, i32 noundef %49, i64 noundef %48, ptr noundef %50, i32 noundef %16, i32 noundef %14, i32 noundef %19) #4
  br label %51

51:                                               ; preds = %47, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i64 3944246}
!9 = !{i64 2151483699}
