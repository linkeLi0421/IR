; ModuleID = '/llk/IR/drivers/firmware/efi/libstub/gop.c_pt.bc'
source_filename = "../drivers/firmware/efi/libstub/gop.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.guid_t = type { [16 x i8] }
%struct.efi_input_key_t = type { i16, i16 }
%struct.anon.1 = type { %struct.efi_table_hdr_t, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.anon = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.9 = type { ptr, ptr, ptr, ptr }
%struct.anon.10 = type { i32, i32, ptr, i32, i64, i32 }
%struct.efi_graphics_output_mode_info_t = type { i32, i32, i32, i32, %struct.efi_pixel_bitmask_t, i32 }
%struct.efi_pixel_bitmask_t = type { i32, i32, i32, i32 }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>

@efi_system_table = external hidden local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [6 x i8] c"mode=\00", align 1
@cmdline.0 = internal unnamed_addr global i32 0, align 4
@cmdline.1 = internal unnamed_addr global i32 0, align 4
@cmdline.2 = internal unnamed_addr global i32 0, align 4
@cmdline.3 = internal unnamed_addr global i32 0, align 4
@cmdline.4 = internal unnamed_addr global i8 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bgr\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@__const.find_gop.conout_proto = private unnamed_addr constant %struct.guid_t { [16 x i8] c",o\B3\D3Q\D5\D4\11\9AF\00\90'?\C1M" }, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"\013ERROR: Failed to set requested mode\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\013ERROR: Requested mode is invalid\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"\013ERROR: Couldn't get mode information\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"\013ERROR: Invalid PixelFormat\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"\013ERROR: Couldn't find requested mode\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Available graphics modes are 0-%u\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"  * = current mode\0A  - = unusable mode\0A\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"blt\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"xxx\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Mode %3u %c%c: Resolution %ux%u-%s%.0hhu\0A\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"\0APress any key to continue (or wait 10 seconds)\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"\013ERROR: Unable to read key, continuing in 10 seconds\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden void @efi_parse_option_graphics(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %133, label %6

6:                                                ; preds = %129, %1
  %7 = phi ptr [ %130, %129 ], [ %0, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %8 = call i32 @strlen(ptr noundef nonnull @.str) #5
  %9 = call i32 @strncmp(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %8) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %6
  %12 = call i32 @strlen(ptr noundef nonnull @.str) #5
  %13 = getelementptr i8, ptr %7, i32 %12
  store ptr %13, ptr %3, align 4
  %14 = call i64 @simple_strtoull(ptr noundef %13, ptr noundef nonnull %3, i32 noundef 0) #5
  %15 = trunc i64 %14 to i32
  %16 = load ptr, ptr %3, align 4
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %11
  %20 = getelementptr i8, ptr %16, i32 1
  store ptr %20, ptr %3, align 4
  %21 = load i8, ptr %16, align 1
  %22 = icmp eq i8 %21, 44
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %11
  %24 = phi ptr [ %20, %19 ], [ %16, %11 ]
  store i32 1, ptr @cmdline.0, align 4
  store i32 %15, ptr @cmdline.1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br label %129

25:                                               ; preds = %19, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store ptr %7, ptr %2, align 4
  %26 = load i8, ptr %7, align 1
  %27 = zext i8 %26 to i32
  %28 = add nsw i32 %27, -58
  %29 = icmp ult i32 %28, -10
  br i1 %29, label %93, label %30

30:                                               ; preds = %25
  %31 = call i64 @simple_strtoull(ptr noundef %7, ptr noundef nonnull %2, i32 noundef 10) #5
  %32 = trunc i64 %31 to i32
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr i8, ptr %33, i32 1
  store ptr %34, ptr %2, align 4
  %35 = load i8, ptr %33, align 1
  %36 = icmp eq i8 %35, 120
  br i1 %36, label %37, label %93

37:                                               ; preds = %30
  %38 = load i8, ptr %34, align 1
  %39 = zext i8 %38 to i32
  %40 = add nsw i32 %39, -58
  %41 = icmp ult i32 %40, -10
  br i1 %41, label %93, label %42

42:                                               ; preds = %37
  %43 = call i64 @simple_strtoull(ptr noundef %34, ptr noundef nonnull %2, i32 noundef 10) #5
  %44 = trunc i64 %43 to i32
  %45 = load ptr, ptr %2, align 4
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 45
  br i1 %47, label %48, label %81

48:                                               ; preds = %42
  %49 = getelementptr i8, ptr %45, i32 1
  store ptr %49, ptr %2, align 4
  %50 = call i32 @strlen(ptr noundef nonnull @.str.1) #5
  %51 = call i32 @strncmp(ptr noundef %49, ptr noundef nonnull @.str.1, i32 noundef %50) #5
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = call i32 @strlen(ptr noundef nonnull @.str.1) #5
  %55 = load ptr, ptr %2, align 4
  %56 = getelementptr i8, ptr %55, i32 %54
  store ptr %56, ptr %2, align 4
  br label %76

57:                                               ; preds = %48
  %58 = load ptr, ptr %2, align 4
  %59 = call i32 @strlen(ptr noundef nonnull @.str.2) #5
  %60 = call i32 @strncmp(ptr noundef %58, ptr noundef nonnull @.str.2, i32 noundef %59) #5
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = call i32 @strlen(ptr noundef nonnull @.str.2) #5
  %64 = load ptr, ptr %2, align 4
  %65 = getelementptr i8, ptr %64, i32 %63
  store ptr %65, ptr %2, align 4
  br label %76

66:                                               ; preds = %57
  %67 = load ptr, ptr %2, align 4
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %69, -58
  %71 = icmp ult i32 %70, -10
  br i1 %71, label %93, label %72

72:                                               ; preds = %66
  %73 = call i64 @simple_strtoull(ptr noundef %67, ptr noundef nonnull %2, i32 noundef 10) #5
  %74 = trunc i64 %73 to i8
  %75 = load ptr, ptr %2, align 4
  br label %76

76:                                               ; preds = %72, %62, %53
  %77 = phi ptr [ %75, %72 ], [ %65, %62 ], [ %56, %53 ]
  %78 = phi i8 [ %74, %72 ], [ 0, %62 ], [ 0, %53 ]
  %79 = phi i32 [ -1, %72 ], [ 1, %62 ], [ 0, %53 ]
  %80 = load i8, ptr %77, align 1
  br label %81

81:                                               ; preds = %76, %42
  %82 = phi i8 [ %80, %76 ], [ %46, %42 ]
  %83 = phi ptr [ %77, %76 ], [ %45, %42 ]
  %84 = phi i8 [ %78, %76 ], [ 0, %42 ]
  %85 = phi i32 [ %79, %76 ], [ -1, %42 ]
  %86 = icmp eq i8 %82, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %81
  %88 = getelementptr i8, ptr %83, i32 1
  store ptr %88, ptr %2, align 4
  %89 = load i8, ptr %83, align 1
  %90 = icmp eq i8 %89, 44
  br i1 %90, label %91, label %93

91:                                               ; preds = %87, %81
  %92 = phi ptr [ %88, %87 ], [ %83, %81 ]
  store i32 2, ptr @cmdline.0, align 4
  store i32 %32, ptr @cmdline.1, align 4
  store i32 %44, ptr @cmdline.2, align 4
  store i32 %85, ptr @cmdline.3, align 4
  store i8 %84, ptr @cmdline.4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br label %129

93:                                               ; preds = %87, %66, %37, %30, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  %94 = call i32 @strlen(ptr noundef nonnull @.str.3) #5
  %95 = call i32 @strncmp(ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef %94) #5
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = call i32 @strlen(ptr noundef nonnull @.str.3) #5
  %99 = getelementptr i8, ptr %7, i32 %98
  %100 = load i8, ptr %99, align 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = getelementptr i8, ptr %99, i32 1
  %104 = icmp eq i8 %100, 44
  br i1 %104, label %105, label %107

105:                                              ; preds = %102, %97
  %106 = phi ptr [ %103, %102 ], [ %99, %97 ]
  store i32 3, ptr @cmdline.0, align 4
  br label %129

107:                                              ; preds = %102, %93
  %108 = call i32 @strlen(ptr noundef nonnull @.str.4) #5
  %109 = call i32 @strncmp(ptr noundef %7, ptr noundef nonnull @.str.4, i32 noundef %108) #5
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = call i32 @strlen(ptr noundef nonnull @.str.4) #5
  %113 = getelementptr i8, ptr %7, i32 %112
  %114 = load i8, ptr %113, align 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = getelementptr i8, ptr %113, i32 1
  %118 = icmp eq i8 %114, 44
  br i1 %118, label %120, label %119

119:                                              ; preds = %116, %107
  br label %122

120:                                              ; preds = %116, %111
  %121 = phi ptr [ %117, %116 ], [ %113, %111 ]
  store i32 4, ptr @cmdline.0, align 4
  br label %129

122:                                              ; preds = %126, %119
  %123 = phi ptr [ %127, %126 ], [ %7, %119 ]
  %124 = load i8, ptr %123, align 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %122
  %127 = getelementptr i8, ptr %123, i32 1
  %128 = icmp eq i8 %124, 44
  br i1 %128, label %129, label %122

129:                                              ; preds = %126, %120, %105, %91, %23
  %130 = phi ptr [ %121, %120 ], [ %106, %105 ], [ %92, %91 ], [ %24, %23 ], [ %127, %126 ]
  %131 = load i8, ptr %130, align 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %6

133:                                              ; preds = %129, %122, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @efi_setup_gop(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.efi_input_key_t, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 4
  %14 = alloca %struct.guid_t, align 4
  %15 = alloca ptr, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 4
  store i32 %2, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #6
  store ptr null, ptr %17, align 4
  %18 = load ptr, ptr @efi_system_table, align 4
  %19 = getelementptr inbounds %struct.anon.1, ptr %18, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.anon, ptr %20, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %22(i32 noundef 2, i32 noundef %2, ptr noundef nonnull %17) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %576

25:                                               ; preds = %3
  %26 = load ptr, ptr @efi_system_table, align 4
  %27 = getelementptr inbounds %struct.anon.1, ptr %26, i32 0, i32 10
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.anon, ptr %28, i32 0, i32 20
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %17, align 4
  %32 = call i32 %30(i32 noundef 2, ptr noundef %1, ptr noundef null, ptr noundef nonnull %16, ptr noundef %31) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %567

34:                                               ; preds = %25
  %35 = load i32, ptr %16, align 4
  %36 = load ptr, ptr %17, align 4
  %37 = icmp ult i32 %35, 4
  br i1 %37, label %567, label %38

38:                                               ; preds = %34
  %39 = lshr i32 %35, 2
  br label %40

40:                                               ; preds = %75, %38
  %41 = phi i32 [ %77, %75 ], [ 0, %38 ]
  %42 = phi ptr [ %76, %75 ], [ null, %38 ]
  %43 = getelementptr ptr, ptr %36, i32 %41
  %44 = load ptr, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #6
  store ptr null, ptr %13, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) @__const.find_gop.conout_proto, i32 16, i1 false) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #6
  store ptr null, ptr %15, align 4
  %45 = load ptr, ptr @efi_system_table, align 4
  %46 = getelementptr inbounds %struct.anon.1, ptr %45, i32 0, i32 10
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.anon, ptr %47, i32 0, i32 17
  %49 = load ptr, ptr %48, align 8
  %50 = call i32 %49(ptr noundef %44, ptr noundef %1, ptr noundef nonnull %13) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %40
  %53 = load ptr, ptr %13, align 4
  %54 = getelementptr inbounds %struct.anon.9, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.anon.10, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %57, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = icmp sgt i32 %59, 2
  br i1 %60, label %75, label %61

61:                                               ; preds = %52
  %62 = load ptr, ptr @efi_system_table, align 4
  %63 = getelementptr inbounds %struct.anon.1, ptr %62, i32 0, i32 10
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.anon, ptr %64, i32 0, i32 17
  %66 = load ptr, ptr %65, align 8
  %67 = call i32 %66(ptr noundef %44, ptr noundef nonnull %14, ptr noundef nonnull %15) #5
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %61
  %70 = icmp eq ptr %42, null
  %71 = load ptr, ptr %13, align 4
  %72 = select i1 %70, ptr %71, ptr %42
  br label %75

73:                                               ; preds = %61
  %74 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #6
  br label %79

75:                                               ; preds = %69, %52, %40
  %76 = phi ptr [ %42, %52 ], [ %42, %40 ], [ %72, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #6
  %77 = add nuw nsw i32 %41, 1
  %78 = icmp eq i32 %77, %39
  br i1 %78, label %79, label %40

79:                                               ; preds = %75, %73
  %80 = phi ptr [ %74, %73 ], [ %76, %75 ]
  %81 = icmp eq ptr %80, null
  br i1 %81, label %567, label %82

82:                                               ; preds = %79
  %83 = load i32, ptr @cmdline.0, align 4
  switch i32 %83, label %431 [
    i32 1, label %84
    i32 2, label %119
    i32 3, label %241
    i32 4, label %344
  ]

84:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #6
  store ptr null, ptr %11, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #6
  store i32 0, ptr %12, align 4, !annotation !9
  %85 = getelementptr inbounds %struct.anon.9, ptr %80, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.anon.10, ptr %86, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = load i32, ptr @cmdline.1, align 4
  %90 = icmp eq i32 %89, %88
  br i1 %90, label %117, label %91

91:                                               ; preds = %84
  %92 = load i32, ptr %86, align 8
  %93 = icmp ult i32 %89, %92
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.6) #5
  br label %117

96:                                               ; preds = %91
  %97 = load ptr, ptr %80, align 4
  %98 = call i32 %97(ptr noundef nonnull %80, i32 noundef %89, ptr noundef nonnull %12, ptr noundef nonnull %11) #5
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.7) #5
  br label %117

102:                                              ; preds = %96
  %103 = load ptr, ptr %11, align 4
  %104 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %103, i32 0, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = load ptr, ptr @efi_system_table, align 4
  %107 = getelementptr inbounds %struct.anon.1, ptr %106, i32 0, i32 10
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.anon, ptr %108, i32 0, i32 7
  %110 = load ptr, ptr %109, align 8
  %111 = call i32 %110(ptr noundef %103) #5
  %112 = icmp sgt i32 %105, 2
  br i1 %112, label %113, label %115

113:                                              ; preds = %102
  %114 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.8) #5
  br label %117

115:                                              ; preds = %102
  %116 = load i32, ptr @cmdline.1, align 4
  br label %117

117:                                              ; preds = %115, %113, %100, %94, %84
  %118 = phi i32 [ %88, %94 ], [ %88, %100 ], [ %88, %113 ], [ %116, %115 ], [ %88, %84 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #6
  br label %417

119:                                              ; preds = %82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  store i32 0, ptr %10, align 4, !annotation !9
  %120 = getelementptr inbounds %struct.anon.9, ptr %80, i32 0, i32 3
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.anon.10, ptr %121, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.anon.10, ptr %121, i32 0, i32 2
  %125 = load ptr, ptr %124, align 8
  store ptr %125, ptr %9, align 4
  %126 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %125, i32 0, i32 3
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %125, i32 0, i32 4
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %125, i32 0, i32 4, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %125, i32 0, i32 4, i32 2
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %125, i32 0, i32 4, i32 3
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %125, i32 0, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = load i32, ptr @cmdline.1, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %170

140:                                              ; preds = %119
  %141 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %125, i32 0, i32 2
  %142 = load i32, ptr %141, align 4
  %143 = load i32, ptr @cmdline.2, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %170

145:                                              ; preds = %140
  %146 = load i32, ptr @cmdline.3, align 4
  %147 = icmp slt i32 %146, 0
  %148 = icmp eq i32 %146, %127
  %149 = select i1 %147, i1 true, i1 %148
  br i1 %149, label %150, label %170

150:                                              ; preds = %145
  %151 = load i8, ptr @cmdline.4, align 4
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %239, label %153

153:                                              ; preds = %150
  %154 = icmp eq i32 %127, 2
  br i1 %154, label %155, label %167

155:                                              ; preds = %153
  %156 = or i32 %131, %129
  %157 = or i32 %156, %133
  %158 = or i32 %157, %135
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %170, label %160

160:                                              ; preds = %155
  %161 = call i32 @llvm.ctlz.i32(i32 %158, i1 true) #6, !range !10
  %162 = xor i32 %161, 31
  %163 = call i32 @llvm.cttz.i32(i32 %158, i1 true) #6, !range !10
  %164 = sub nsw i32 %162, %163
  %165 = trunc i32 %164 to i8
  %166 = add nsw i8 %165, 1
  br label %167

167:                                              ; preds = %160, %153
  %168 = phi i8 [ %166, %160 ], [ 32, %153 ]
  %169 = icmp eq i8 %151, %168
  br i1 %169, label %239, label %170

170:                                              ; preds = %167, %155, %145, %140, %119
  %171 = load i32, ptr %121, align 8
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %237, label %173

173:                                              ; preds = %234, %170
  %174 = phi i32 [ %235, %234 ], [ 0, %170 ]
  %175 = icmp eq i32 %174, %123
  br i1 %175, label %234, label %176

176:                                              ; preds = %173
  %177 = load ptr, ptr %80, align 4
  %178 = call i32 %177(ptr noundef nonnull %80, i32 noundef %174, ptr noundef nonnull %10, ptr noundef nonnull %9) #5
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %234

180:                                              ; preds = %176
  %181 = load ptr, ptr %9, align 4
  %182 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %181, i32 0, i32 3
  %183 = load i32, ptr %182, align 4
  %184 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %181, i32 0, i32 4
  %185 = load i32, ptr %184, align 4
  %186 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %181, i32 0, i32 4, i32 1
  %187 = load i32, ptr %186, align 4
  %188 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %181, i32 0, i32 4, i32 2
  %189 = load i32, ptr %188, align 4
  %190 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %181, i32 0, i32 4, i32 3
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %181, i32 0, i32 1
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %181, i32 0, i32 2
  %195 = load i32, ptr %194, align 4
  %196 = load ptr, ptr @efi_system_table, align 4
  %197 = getelementptr inbounds %struct.anon.1, ptr %196, i32 0, i32 10
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.anon, ptr %198, i32 0, i32 7
  %200 = load ptr, ptr %199, align 8
  %201 = call i32 %200(ptr noundef %181) #5
  %202 = icmp slt i32 %183, 3
  %203 = load i32, ptr @cmdline.1, align 4
  %204 = icmp eq i32 %193, %203
  %205 = select i1 %202, i1 %204, i1 false
  %206 = load i32, ptr @cmdline.2, align 4
  %207 = icmp eq i32 %195, %206
  %208 = select i1 %205, i1 %207, i1 false
  br i1 %208, label %209, label %234

209:                                              ; preds = %180
  %210 = load i32, ptr @cmdline.3, align 4
  %211 = icmp slt i32 %210, 0
  %212 = icmp eq i32 %210, %183
  %213 = select i1 %211, i1 true, i1 %212
  br i1 %213, label %214, label %234

214:                                              ; preds = %209
  %215 = load i8, ptr @cmdline.4, align 4
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %239, label %217

217:                                              ; preds = %214
  %218 = icmp eq i32 %183, 2
  br i1 %218, label %219, label %231

219:                                              ; preds = %217
  %220 = or i32 %187, %185
  %221 = or i32 %220, %189
  %222 = or i32 %221, %191
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %234, label %224

224:                                              ; preds = %219
  %225 = call i32 @llvm.ctlz.i32(i32 %222, i1 true) #6, !range !10
  %226 = xor i32 %225, 31
  %227 = call i32 @llvm.cttz.i32(i32 %222, i1 true) #6, !range !10
  %228 = sub nsw i32 %226, %227
  %229 = trunc i32 %228 to i8
  %230 = add nsw i8 %229, 1
  br label %231

231:                                              ; preds = %224, %217
  %232 = phi i8 [ %230, %224 ], [ 32, %217 ]
  %233 = icmp eq i8 %215, %232
  br i1 %233, label %239, label %234

234:                                              ; preds = %231, %219, %209, %180, %176, %173
  %235 = add nuw i32 %174, 1
  %236 = icmp eq i32 %235, %171
  br i1 %236, label %237, label %173

237:                                              ; preds = %234, %170
  %238 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.9) #5
  br label %239

239:                                              ; preds = %237, %231, %214, %167, %150
  %240 = phi i32 [ %123, %237 ], [ %123, %167 ], [ %123, %150 ], [ %174, %214 ], [ %174, %231 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  br label %417

241:                                              ; preds = %82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 0, ptr %8, align 4, !annotation !9
  %242 = getelementptr inbounds %struct.anon.9, ptr %80, i32 0, i32 3
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr inbounds %struct.anon.10, ptr %243, i32 0, i32 1
  %245 = load i32, ptr %244, align 4
  %246 = load i32, ptr %243, align 8
  %247 = getelementptr inbounds %struct.anon.10, ptr %243, i32 0, i32 2
  %248 = load ptr, ptr %247, align 8
  store ptr %248, ptr %7, align 4
  %249 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %248, i32 0, i32 3
  %250 = load i32, ptr %249, align 4
  %251 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %248, i32 0, i32 1
  %252 = load i32, ptr %251, align 4
  %253 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %248, i32 0, i32 2
  %254 = load i32, ptr %253, align 4
  %255 = mul i32 %254, %252
  %256 = icmp eq i32 %250, 2
  br i1 %256, label %257, label %277

257:                                              ; preds = %241
  %258 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %248, i32 0, i32 4, i32 3
  %259 = load i32, ptr %258, align 4
  %260 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %248, i32 0, i32 4, i32 2
  %261 = load i32, ptr %260, align 4
  %262 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %248, i32 0, i32 4, i32 1
  %263 = load i32, ptr %262, align 4
  %264 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %248, i32 0, i32 4
  %265 = load i32, ptr %264, align 4
  %266 = or i32 %261, %259
  %267 = or i32 %266, %263
  %268 = or i32 %267, %265
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %277, label %270

270:                                              ; preds = %257
  %271 = call i32 @llvm.ctlz.i32(i32 %268, i1 true) #6, !range !10
  %272 = xor i32 %271, 31
  %273 = call i32 @llvm.cttz.i32(i32 %268, i1 true) #6, !range !10
  %274 = sub nsw i32 %272, %273
  %275 = trunc i32 %274 to i8
  %276 = add nsw i8 %275, 1
  br label %277

277:                                              ; preds = %270, %257, %241
  %278 = phi i8 [ %276, %270 ], [ 0, %257 ], [ 32, %241 ]
  %279 = icmp eq i32 %246, 0
  br i1 %279, label %342, label %280

280:                                              ; preds = %336, %277
  %281 = phi i32 [ %340, %336 ], [ 0, %277 ]
  %282 = phi i8 [ %339, %336 ], [ %278, %277 ]
  %283 = phi i32 [ %338, %336 ], [ %255, %277 ]
  %284 = phi i32 [ %337, %336 ], [ %245, %277 ]
  %285 = icmp eq i32 %281, %245
  br i1 %285, label %336, label %286

286:                                              ; preds = %280
  %287 = load ptr, ptr %80, align 4
  %288 = call i32 %287(ptr noundef nonnull %80, i32 noundef %281, ptr noundef nonnull %8, ptr noundef nonnull %7) #5
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %336

290:                                              ; preds = %286
  %291 = load ptr, ptr %7, align 4
  %292 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %291, i32 0, i32 3
  %293 = load i32, ptr %292, align 4
  %294 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %291, i32 0, i32 4
  %295 = load i32, ptr %294, align 4
  %296 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %291, i32 0, i32 4, i32 1
  %297 = load i32, ptr %296, align 4
  %298 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %291, i32 0, i32 4, i32 2
  %299 = load i32, ptr %298, align 4
  %300 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %291, i32 0, i32 4, i32 3
  %301 = load i32, ptr %300, align 4
  %302 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %291, i32 0, i32 1
  %303 = load i32, ptr %302, align 4
  %304 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %291, i32 0, i32 2
  %305 = load i32, ptr %304, align 4
  %306 = load ptr, ptr @efi_system_table, align 4
  %307 = getelementptr inbounds %struct.anon.1, ptr %306, i32 0, i32 10
  %308 = load ptr, ptr %307, align 4
  %309 = getelementptr inbounds %struct.anon, ptr %308, i32 0, i32 7
  %310 = load ptr, ptr %309, align 8
  %311 = call i32 %310(ptr noundef %291) #5
  %312 = icmp sgt i32 %293, 2
  br i1 %312, label %336, label %313

313:                                              ; preds = %290
  %314 = mul i32 %305, %303
  %315 = icmp ult i32 %314, %283
  br i1 %315, label %336, label %316

316:                                              ; preds = %313
  %317 = icmp eq i32 %293, 2
  br i1 %317, label %318, label %330

318:                                              ; preds = %316
  %319 = or i32 %297, %295
  %320 = or i32 %319, %299
  %321 = or i32 %320, %301
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %330, label %323

323:                                              ; preds = %318
  %324 = call i32 @llvm.ctlz.i32(i32 %321, i1 true) #6, !range !10
  %325 = xor i32 %324, 31
  %326 = call i32 @llvm.cttz.i32(i32 %321, i1 true) #6, !range !10
  %327 = sub nsw i32 %325, %326
  %328 = trunc i32 %327 to i8
  %329 = add nsw i8 %328, 1
  br label %330

330:                                              ; preds = %323, %318, %316
  %331 = phi i8 [ %329, %323 ], [ 0, %318 ], [ 32, %316 ]
  %332 = icmp ugt i32 %314, %283
  %333 = icmp ugt i8 %331, %282
  %334 = select i1 %332, i1 true, i1 %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %330
  br label %336

336:                                              ; preds = %335, %330, %313, %290, %286, %280
  %337 = phi i32 [ %284, %280 ], [ %284, %286 ], [ %284, %290 ], [ %284, %313 ], [ %281, %335 ], [ %284, %330 ]
  %338 = phi i32 [ %283, %280 ], [ %283, %286 ], [ %283, %290 ], [ %283, %313 ], [ %314, %335 ], [ %283, %330 ]
  %339 = phi i8 [ %282, %280 ], [ %282, %286 ], [ %282, %290 ], [ %282, %313 ], [ %331, %335 ], [ %282, %330 ]
  %340 = add nuw i32 %281, 1
  %341 = icmp eq i32 %340, %246
  br i1 %341, label %342, label %280

342:                                              ; preds = %336, %277
  %343 = phi i32 [ %245, %277 ], [ %337, %336 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  br label %417

344:                                              ; preds = %82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !9
  %345 = getelementptr inbounds %struct.anon.9, ptr %80, i32 0, i32 3
  %346 = load ptr, ptr %345, align 4
  %347 = getelementptr inbounds %struct.anon.10, ptr %346, i32 0, i32 1
  %348 = load i32, ptr %347, align 4
  %349 = load i32, ptr %346, align 8
  %350 = add i32 %349, -1
  %351 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.10, i32 noundef %350) #5
  call void @efi_puts(ptr noundef nonnull @.str.11) #5
  %352 = icmp eq i32 %349, 0
  br i1 %352, label %406, label %353

353:                                              ; preds = %403, %344
  %354 = phi i32 [ %404, %403 ], [ 0, %344 ]
  %355 = load ptr, ptr %80, align 4
  %356 = call i32 %355(ptr noundef nonnull %80, i32 noundef %354, ptr noundef nonnull %5, ptr noundef nonnull %4) #5
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %403

358:                                              ; preds = %353
  %359 = load ptr, ptr %4, align 4
  %360 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %359, i32 0, i32 3
  %361 = load i32, ptr %360, align 4
  %362 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %359, i32 0, i32 4
  %363 = load i32, ptr %362, align 4
  %364 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %359, i32 0, i32 4, i32 1
  %365 = load i32, ptr %364, align 4
  %366 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %359, i32 0, i32 4, i32 2
  %367 = load i32, ptr %366, align 4
  %368 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %359, i32 0, i32 4, i32 3
  %369 = load i32, ptr %368, align 4
  %370 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %359, i32 0, i32 1
  %371 = load i32, ptr %370, align 4
  %372 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %359, i32 0, i32 2
  %373 = load i32, ptr %372, align 4
  %374 = load ptr, ptr @efi_system_table, align 4
  %375 = getelementptr inbounds %struct.anon.1, ptr %374, i32 0, i32 10
  %376 = load ptr, ptr %375, align 4
  %377 = getelementptr inbounds %struct.anon, ptr %376, i32 0, i32 7
  %378 = load ptr, ptr %377, align 8
  %379 = call i32 %378(ptr noundef %359) #5
  %380 = icmp sgt i32 %361, 2
  switch i32 %361, label %394 [
    i32 0, label %395
    i32 1, label %381
    i32 2, label %382
    i32 3, label %393
  ]

381:                                              ; preds = %358
  br label %395

382:                                              ; preds = %358
  %383 = or i32 %365, %363
  %384 = or i32 %383, %367
  %385 = or i32 %384, %369
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %395, label %387

387:                                              ; preds = %382
  %388 = call i32 @llvm.ctlz.i32(i32 %385, i1 true) #6, !range !10
  %389 = xor i32 %388, 31
  %390 = call i32 @llvm.cttz.i32(i32 %385, i1 true) #6, !range !10
  %391 = sub nsw i32 1, %390
  %392 = add nsw i32 %391, %389
  br label %395

393:                                              ; preds = %358
  br label %395

394:                                              ; preds = %358
  br label %395

395:                                              ; preds = %394, %393, %387, %382, %381, %358
  %396 = phi i32 [ 0, %394 ], [ 0, %393 ], [ 0, %381 ], [ %361, %358 ], [ %392, %387 ], [ 0, %382 ]
  %397 = phi ptr [ @.str.14, %394 ], [ @.str.13, %393 ], [ @.str.2, %381 ], [ @.str.1, %358 ], [ @.str.12, %387 ], [ @.str.12, %382 ]
  %398 = icmp eq i32 %354, %348
  %399 = select i1 %398, i32 42, i32 32
  %400 = select i1 %380, i32 45, i32 32
  %401 = and i32 %396, 255
  %402 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.15, i32 noundef %354, i32 noundef %399, i32 noundef %400, i32 noundef %371, i32 noundef %373, ptr noundef nonnull %397, i32 noundef %401) #5
  br label %403

403:                                              ; preds = %395, %353
  %404 = add nuw i32 %354, 1
  %405 = icmp eq i32 %404, %349
  br i1 %405, label %406, label %353

406:                                              ; preds = %403, %344
  call void @efi_puts(ptr noundef nonnull @.str.16) #5
  %407 = call i32 @efi_wait_for_key(i32 noundef 10000000, ptr noundef nonnull %6) #5
  switch i32 %407, label %408 [
    i32 -2147483630, label %416
    i32 0, label %416
  ]

408:                                              ; preds = %406
  %409 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.17) #5
  %410 = load ptr, ptr @efi_system_table, align 4
  %411 = getelementptr inbounds %struct.anon.1, ptr %410, i32 0, i32 10
  %412 = load ptr, ptr %411, align 4
  %413 = getelementptr inbounds %struct.anon, ptr %412, i32 0, i32 29
  %414 = load ptr, ptr %413, align 8
  %415 = call i32 %414(i32 noundef 10000000) #5
  br label %416

416:                                              ; preds = %408, %406, %406
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %417

417:                                              ; preds = %416, %342, %239, %117
  %418 = phi i32 [ %348, %416 ], [ %343, %342 ], [ %240, %239 ], [ %118, %117 ]
  %419 = getelementptr inbounds %struct.anon.9, ptr %80, i32 0, i32 3
  %420 = load ptr, ptr %419, align 4
  %421 = getelementptr inbounds %struct.anon.10, ptr %420, i32 0, i32 1
  %422 = load i32, ptr %421, align 4
  %423 = icmp eq i32 %418, %422
  br i1 %423, label %431, label %424

424:                                              ; preds = %417
  %425 = getelementptr inbounds %struct.anon.9, ptr %80, i32 0, i32 1
  %426 = load ptr, ptr %425, align 4
  %427 = call i32 %426(ptr noundef nonnull %80, i32 noundef %418) #5
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %431, label %429

429:                                              ; preds = %424
  %430 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.5) #5
  br label %431

431:                                              ; preds = %429, %424, %417, %82
  %432 = getelementptr inbounds %struct.anon.9, ptr %80, i32 0, i32 3
  %433 = load ptr, ptr %432, align 4
  %434 = getelementptr inbounds %struct.anon.10, ptr %433, i32 0, i32 2
  %435 = load ptr, ptr %434, align 8
  %436 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 11
  store i8 112, ptr %436, align 1
  %437 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %435, i32 0, i32 1
  %438 = load i32, ptr %437, align 4
  %439 = trunc i32 %438 to i16
  %440 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 13
  store i16 %439, ptr %440, align 1
  %441 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %435, i32 0, i32 2
  %442 = load i32, ptr %441, align 4
  %443 = trunc i32 %442 to i16
  %444 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 14
  store i16 %443, ptr %444, align 1
  %445 = getelementptr inbounds %struct.anon.10, ptr %433, i32 0, i32 4
  %446 = load i64, ptr %445, align 8
  %447 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 16
  %448 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 34
  %449 = trunc i64 %446 to i32
  store i32 %449, ptr %447, align 4
  %450 = lshr i64 %446, 32
  %451 = trunc i64 %450 to i32
  store i32 %451, ptr %448, align 4
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %457, label %453

453:                                              ; preds = %431
  %454 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 33
  %455 = load i32, ptr %454, align 1
  %456 = or i32 %455, 2
  store i32 %456, ptr %454, align 1
  br label %457

457:                                              ; preds = %453, %431
  %458 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 31
  store i16 1, ptr %458, align 1
  %459 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %435, i32 0, i32 5
  %460 = load i32, ptr %459, align 4
  %461 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %435, i32 0, i32 4
  %462 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %435, i32 0, i32 3
  %463 = load i32, ptr %462, align 4
  %464 = load i32, ptr %461, align 4
  %465 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %435, i32 0, i32 4, i32 1
  %466 = load i32, ptr %465, align 4
  %467 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %435, i32 0, i32 4, i32 2
  %468 = load i32, ptr %467, align 4
  %469 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %435, i32 0, i32 4, i32 3
  %470 = load i32, ptr %469, align 4
  switch i32 %463, label %543 [
    i32 2, label %471
    i32 0, label %540
  ]

471:                                              ; preds = %457
  %472 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 22
  %473 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 21
  %474 = icmp eq i32 %464, 0
  br i1 %474, label %475, label %476

475:                                              ; preds = %471
  store i8 0, ptr %473, align 1
  store i8 0, ptr %472, align 1
  br label %484

476:                                              ; preds = %471
  %477 = call i32 @llvm.cttz.i32(i32 %464, i1 true) #6, !range !10
  %478 = trunc i32 %477 to i8
  store i8 %478, ptr %472, align 1
  %479 = call i32 @llvm.ctlz.i32(i32 %464, i1 true) #6, !range !10
  %480 = trunc i32 %479 to i8
  %481 = xor i8 %480, 31
  %482 = sub nsw i8 1, %478
  %483 = add nsw i8 %482, %481
  store i8 %483, ptr %473, align 1
  br label %484

484:                                              ; preds = %476, %475
  %485 = phi i8 [ 0, %475 ], [ %483, %476 ]
  %486 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 24
  %487 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 23
  %488 = icmp eq i32 %466, 0
  br i1 %488, label %489, label %490

489:                                              ; preds = %484
  store i8 0, ptr %487, align 1
  store i8 0, ptr %486, align 1
  br label %498

490:                                              ; preds = %484
  %491 = call i32 @llvm.cttz.i32(i32 %466, i1 true) #6, !range !10
  %492 = trunc i32 %491 to i8
  store i8 %492, ptr %486, align 1
  %493 = call i32 @llvm.ctlz.i32(i32 %466, i1 true) #6, !range !10
  %494 = trunc i32 %493 to i8
  %495 = xor i8 %494, 31
  %496 = sub nsw i8 1, %492
  %497 = add nsw i8 %496, %495
  store i8 %497, ptr %487, align 1
  br label %498

498:                                              ; preds = %490, %489
  %499 = phi i8 [ 0, %489 ], [ %497, %490 ]
  %500 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 26
  %501 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 25
  %502 = icmp eq i32 %468, 0
  br i1 %502, label %503, label %504

503:                                              ; preds = %498
  store i8 0, ptr %501, align 1
  store i8 0, ptr %500, align 1
  br label %512

504:                                              ; preds = %498
  %505 = call i32 @llvm.cttz.i32(i32 %468, i1 true) #6, !range !10
  %506 = trunc i32 %505 to i8
  store i8 %506, ptr %500, align 1
  %507 = call i32 @llvm.ctlz.i32(i32 %468, i1 true) #6, !range !10
  %508 = trunc i32 %507 to i8
  %509 = xor i8 %508, 31
  %510 = sub nsw i8 1, %506
  %511 = add nsw i8 %510, %509
  store i8 %511, ptr %501, align 1
  br label %512

512:                                              ; preds = %504, %503
  %513 = phi i8 [ 0, %503 ], [ %511, %504 ]
  %514 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 28
  %515 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 27
  %516 = icmp eq i32 %470, 0
  br i1 %516, label %517, label %518

517:                                              ; preds = %512
  store i8 0, ptr %515, align 1
  store i8 0, ptr %514, align 1
  br label %526

518:                                              ; preds = %512
  %519 = call i32 @llvm.cttz.i32(i32 %470, i1 true) #6, !range !10
  %520 = trunc i32 %519 to i8
  store i8 %520, ptr %514, align 1
  %521 = call i32 @llvm.ctlz.i32(i32 %470, i1 true) #6, !range !10
  %522 = trunc i32 %521 to i8
  %523 = xor i8 %522, 31
  %524 = sub nsw i8 1, %520
  %525 = add nsw i8 %524, %523
  store i8 %525, ptr %515, align 1
  br label %526

526:                                              ; preds = %518, %517
  %527 = phi i8 [ 0, %517 ], [ %525, %518 ]
  %528 = zext i8 %485 to i16
  %529 = zext i8 %499 to i16
  %530 = add nuw nsw i16 %529, %528
  %531 = zext i8 %513 to i16
  %532 = add nuw nsw i16 %530, %531
  %533 = zext i8 %527 to i16
  %534 = add nuw nsw i16 %532, %533
  %535 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 15
  store i16 %534, ptr %535, align 1
  %536 = zext i16 %534 to i32
  %537 = mul i32 %460, %536
  %538 = lshr i32 %537, 3
  %539 = trunc i32 %538 to i16
  br label %557

540:                                              ; preds = %457
  %541 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 22
  store i8 0, ptr %541, align 1
  %542 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 26
  br label %546

543:                                              ; preds = %457
  %544 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 26
  store i8 0, ptr %544, align 1
  %545 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 22
  br label %546

546:                                              ; preds = %543, %540
  %547 = phi ptr [ %545, %543 ], [ %542, %540 ]
  store i8 16, ptr %547, align 1
  %548 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 24
  store i8 8, ptr %548, align 1
  %549 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 28
  store i8 24, ptr %549, align 1
  %550 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 27
  store i8 8, ptr %550, align 1
  %551 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 25
  store i8 8, ptr %551, align 1
  %552 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 23
  store i8 8, ptr %552, align 1
  %553 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 21
  store i8 8, ptr %553, align 1
  %554 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 15
  store i16 32, ptr %554, align 1
  %555 = trunc i32 %460 to i16
  %556 = shl i16 %555, 2
  br label %557

557:                                              ; preds = %546, %526
  %558 = phi i16 [ %556, %546 ], [ %539, %526 ]
  %559 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 20
  store i16 %558, ptr %559, align 1
  %560 = zext i16 %558 to i32
  %561 = and i32 %442, 65535
  %562 = mul nuw i32 %561, %560
  %563 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 17
  store i32 %562, ptr %563, align 1
  %564 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 33
  %565 = load i32, ptr %564, align 1
  %566 = or i32 %565, 1
  store i32 %566, ptr %564, align 1
  br label %567

567:                                              ; preds = %557, %79, %34, %25
  %568 = phi i32 [ %32, %25 ], [ 0, %557 ], [ -2147483634, %79 ], [ -2147483634, %34 ]
  %569 = load ptr, ptr @efi_system_table, align 4
  %570 = getelementptr inbounds %struct.anon.1, ptr %569, i32 0, i32 10
  %571 = load ptr, ptr %570, align 4
  %572 = getelementptr inbounds %struct.anon, ptr %571, i32 0, i32 7
  %573 = load ptr, ptr %572, align 8
  %574 = load ptr, ptr %17, align 4
  %575 = call i32 %573(ptr noundef %574) #5
  br label %576

576:                                              ; preds = %567, %3
  %577 = phi i32 [ %568, %567 ], [ %23, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #6
  ret i32 %577
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid optsize
declare hidden i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @strncmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid optsize
declare hidden void @efi_puts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_wait_for_key(i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid optsize "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin nounwind optsize "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 1}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
!10 = !{i32 0, i32 33}
