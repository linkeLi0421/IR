; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/falcon.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/falcon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.falcon = type { ptr, ptr, %struct.falcon_firmware }
%struct.falcon_firmware = type { ptr, i32, i32, ptr, i32, %struct.falcon_firmware_section, %struct.falcon_firmware_section, %struct.falcon_firmware_section }
%struct.falcon_firmware_section = type { i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.falcon_fw_bin_header_v1 = type { i32, i32, i32, i32, i32, i32 }
%struct.falcon_fw_os_header_v1 = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to parse firmware image\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Falcon boot failed due to timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"incorrect firmware magic\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"unsupported firmware version\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"firmware image size inconsistency\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @falcon_wait_idle(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @ktime_get() #4
  %3 = add i64 %2, 100000000
  %4 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4172
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %18, %1
  %10 = tail call i64 @ktime_get() #4
  %11 = icmp sgt i64 %10, %3
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 4172
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 0, i32 -110
  br label %23

18:                                               ; preds = %9
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #4
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 4172
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %9

23:                                               ; preds = %18, %12, %1
  %24 = phi i32 [ %17, %12 ], [ 0, %1 ], [ 0, %18 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @falcon_read_firmware(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %0, align 4
  %5 = tail call i32 @request_firmware(ptr noundef %3, ptr noundef %1, ptr noundef %4) #4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 2, i32 4
  store i32 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ 0, %7 ], [ %5, %2 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @falcon_load_firmware(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 2, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.firmware, ptr %3, i32 0, i32 1
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ 0, %8 ], [ %16, %10 ]
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr i32, ptr %12, i32 %11
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i32, ptr %5, i32 %11
  store i32 %14, ptr %15, align 4
  %16 = add nuw nsw i32 %11, 1
  %17 = load i32, ptr %3, align 4
  %18 = lshr i32 %17, 2
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %10, label %20

20:                                               ; preds = %10
  %21 = load ptr, ptr %4, align 4
  br label %22

22:                                               ; preds = %20, %1
  %23 = phi ptr [ %21, %20 ], [ %5, %1 ]
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %35 [
    i32 4318, label %25
    i32 4350, label %25
  ]

25:                                               ; preds = %22, %22
  %26 = getelementptr inbounds %struct.falcon_fw_bin_header_v1, ptr %23, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.falcon_fw_bin_header_v1, ptr %23, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 2, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp ugt i32 %31, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29, %25, %22
  %36 = phi ptr [ @.str.2, %22 ], [ @.str.3, %25 ], [ @.str.4, %29 ]
  %37 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull %36) #5
  %38 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str) #5
  br label %60

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.falcon_fw_bin_header_v1, ptr %23, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr i8, ptr %23, i32 %41
  %43 = getelementptr inbounds %struct.falcon_fw_bin_header_v1, ptr %23, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 2, i32 5
  %46 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 2, i32 5, i32 1
  store i32 %44, ptr %46, align 4
  %47 = getelementptr inbounds %struct.falcon_fw_bin_header_v1, ptr %23, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  store i32 %48, ptr %45, align 4
  %49 = load i32, ptr %42, align 4
  %50 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 2, i32 7
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.falcon_fw_os_header_v1, ptr %42, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 2, i32 7, i32 1
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.falcon_fw_os_header_v1, ptr %42, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 2, i32 6
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.falcon_fw_os_header_v1, ptr %42, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 2, i32 6, i32 1
  store i32 %58, ptr %59, align 4
  tail call void @release_firmware(ptr noundef %3) #4
  store ptr null, ptr %2, align 4
  br label %60

60:                                               ; preds = %39, %35
  %61 = phi i32 [ -22, %35 ], [ 0, %39 ]
  ret i32 %61
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @falcon_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 2, i32 3
  store ptr null, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @falcon_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @release_firmware(ptr noundef nonnull %3) #4
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @falcon_boot(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 2, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %99, label %5

5:                                                ; preds = %1
  %6 = tail call i64 @ktime_get() #4
  %7 = add i64 %6, 10000000
  %8 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 4364
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %12 = and i32 %11, 6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %21, %5
  %15 = tail call i64 @ktime_get() #4
  %16 = icmp sgt i64 %15, %7
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr i8, ptr %18, i32 4364
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  br label %27

21:                                               ; preds = %14
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #4
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr i8, ptr %22, i32 4364
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %25 = and i32 %24, 6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %14

27:                                               ; preds = %21, %17, %5
  %28 = phi i32 [ %20, %17 ], [ %11, %5 ], [ %24, %21 ]
  %29 = and i32 %28, 6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %99

31:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %32 = load ptr, ptr %8, align 4
  %33 = getelementptr i8, ptr %32, i32 4364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 0) #4, !srcloc !14
  %34 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 2, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 2, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, %35
  %39 = lshr i32 %38, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %40 = load ptr, ptr %8, align 4
  %41 = getelementptr i8, ptr %40, i32 4368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #4, !srcloc !14
  %42 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 2, i32 6, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 2, i32 6
  br label %53

47:                                               ; preds = %53, %31
  %48 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 2, i32 7, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 2, i32 7
  br label %60

53:                                               ; preds = %53, %45
  %54 = phi i32 [ 0, %45 ], [ %57, %53 ]
  %55 = load i32, ptr %46, align 4
  %56 = add i32 %55, %54
  tail call fastcc void @falcon_copy_chunk(ptr noundef %0, i32 noundef %56, i32 noundef %54, i32 noundef 1)
  %57 = add i32 %54, 256
  %58 = load i32, ptr %42, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %53, label %47

60:                                               ; preds = %60, %51
  %61 = phi i32 [ 0, %51 ], [ %64, %60 ]
  %62 = load i32, ptr %52, align 4
  %63 = add i32 %62, %61
  tail call fastcc void @falcon_copy_chunk(ptr noundef %0, i32 noundef %63, i32 noundef %61, i32 noundef 0)
  %64 = add i32 %61, 256
  %65 = load i32, ptr %48, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %60, label %67

67:                                               ; preds = %60, %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %68 = load ptr, ptr %8, align 4
  %69 = getelementptr i8, ptr %68, i32 4112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 65522) #4, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %70 = load ptr, ptr %8, align 4
  %71 = getelementptr i8, ptr %70, i32 4124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 65520) #4, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %72 = load ptr, ptr %8, align 4
  %73 = getelementptr i8, ptr %72, i32 4168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 3) #4, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %74 = load ptr, ptr %8, align 4
  %75 = getelementptr i8, ptr %74, i32 4356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 0) #4, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %76 = load ptr, ptr %8, align 4
  %77 = getelementptr i8, ptr %76, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 2) #4, !srcloc !14
  %78 = tail call i64 @ktime_get() #4
  %79 = add i64 %78, 100000000
  %80 = load ptr, ptr %8, align 4
  %81 = getelementptr i8, ptr %80, i32 4172
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %92, %67
  %85 = tail call i64 @ktime_get() #4
  %86 = icmp sgt i64 %85, %79
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load ptr, ptr %8, align 4
  %89 = getelementptr i8, ptr %88, i32 4172
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %99, label %97

92:                                               ; preds = %84
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #4
  %93 = load ptr, ptr %8, align 4
  %94 = getelementptr i8, ptr %93, i32 4172
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %84

97:                                               ; preds = %87
  %98 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.1) #5
  br label %99

99:                                               ; preds = %97, %92, %87, %67, %27, %1
  %100 = phi i32 [ -110, %97 ], [ -22, %1 ], [ -110, %27 ], [ 0, %67 ], [ 0, %87 ], [ 0, %92 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @falcon_copy_chunk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq i32 %3, 0
  %6 = select i1 %5, i32 1552, i32 1536
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %7 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 4372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %2) #4, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr i8, ptr %10, i32 4380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %1) #4, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 4376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %6) #4, !srcloc !14
  %14 = tail call i64 @ktime_get() #4
  %15 = add i64 %14, 100000000
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr i8, ptr %16, i32 4376
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !15
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %28, %4
  %22 = tail call i64 @ktime_get() #4
  %23 = icmp sgt i64 %22, %15
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr i8, ptr %25, i32 4376
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  br label %34

28:                                               ; preds = %21
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #4
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr i8, ptr %29, i32 4376
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !15
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %21, label %34

34:                                               ; preds = %28, %24, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @falcon_execute_method(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = lshr i32 %1, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %5 = getelementptr inbounds %struct.falcon, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %4) #4, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %2) #4, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 4970567}
!9 = !{i64 2155666295}
!10 = !{i64 2155666653}
!11 = !{i64 2155672538}
!12 = !{i64 2155672896}
!13 = !{i64 2155664741}
!14 = !{i64 4970149}
!15 = !{i64 2155668111}
!16 = !{i64 2155668469}
