; ModuleID = '/llk/IR/drivers/firmware/efi/libstub/file.c_pt.bc'
source_filename = "../drivers/firmware/efi/libstub/file.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.guid_t = type { [16 x i8] }
%struct.finfo = type { %struct.efi_file_info_t, [256 x i16] }
%struct.efi_file_info_t = type { i64, i64, i64, %struct.efi_time_t, %struct.efi_time_t, %struct.efi_time_t, i64, [0 x i16] }
%struct.efi_time_t = type { i16, i8, i8, i8, i8, i8, i8, i32, i16, i8, i8 }
%struct.anon = type { i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i32, i32, ptr }
%struct.anon.0 = type { %struct.efi_table_hdr_t, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.anon.6 = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.efi_simple_file_system_protocol = type { i64, ptr }
%struct.efi_file_protocol = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [46 x i8] c"\013ERROR: Failed to allocate memory for files\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"\013ERROR: Failed to read file\0A\00", align 1
@__const.efi_open_volume.fs_proto = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\22[N\96Yd\D2\11\8E9\00\A0\C9ir;" }, align 4
@efi_system_table = external hidden local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"\013ERROR: Failed to handle fs_proto\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"\013ERROR: Failed to open volume\0A\00", align 1
@__const.efi_open_file.info_guid = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\92nW\09?m\D2\11\8E9\00\A0\C9ir;" }, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"\013ERROR: Failed to open file: %ls\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\013ERROR: Failed to get file info\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @handle_cmdline_files(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef writeonly %5, ptr noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct.guid_t, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.guid_t, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.finfo, align 8
  %18 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #5
  %19 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  store ptr %20, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #5
  %21 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  store i32 %22, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #5
  store ptr null, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #5
  %23 = icmp ne ptr %5, null
  %24 = icmp ne ptr %6, null
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %213

26:                                               ; preds = %7
  call void @efi_apply_loadoptions_quirk(ptr noundef nonnull %13, ptr noundef nonnull %14) #6
  %27 = load i32, ptr %14, align 4
  %28 = lshr i32 %27, 1
  store i32 %28, ptr %14, align 4
  store i32 0, ptr %16, align 4
  %29 = getelementptr inbounds %struct.finfo, ptr %17, i32 0, i32 1
  %30 = sdiv i32 %2, 2
  %31 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 3
  %32 = getelementptr inbounds %struct.efi_file_info_t, ptr %17, i32 0, i32 1
  %33 = icmp ult i32 %3, %4
  call void @llvm.lifetime.start.p0(i64 592, ptr nonnull %17) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(592) %17, i8 0, i32 592, i1 false), !annotation !9
  %34 = icmp slt i32 %30, %28
  br i1 %34, label %35, label %178

35:                                               ; preds = %187, %26
  %36 = phi i32 [ %131, %187 ], [ 0, %26 ]
  %37 = phi i32 [ %188, %187 ], [ %28, %26 ]
  %38 = load ptr, ptr %13, align 4
  br label %39

39:                                               ; preds = %47, %35
  %40 = phi i32 [ %48, %47 ], [ %30, %35 ]
  %41 = sub i32 %40, %30
  %42 = getelementptr i16, ptr %38, i32 %41
  %43 = call i32 @memcmp(ptr noundef %42, ptr noundef %1, i32 noundef %2) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = icmp slt i32 %40, %37
  br i1 %46, label %50, label %57

47:                                               ; preds = %39
  %48 = add i32 %40, 1
  %49 = icmp eq i32 %48, %37
  br i1 %49, label %178, label %39

50:                                               ; preds = %54, %45
  %51 = phi i32 [ %55, %54 ], [ %40, %45 ]
  %52 = getelementptr i16, ptr %38, i32 %51
  %53 = load i16, ptr %52, align 2
  switch i16 %53, label %57 [
    i16 47, label %54
    i16 92, label %54
  ]

54:                                               ; preds = %50, %50
  %55 = add i32 %51, 1
  %56 = icmp eq i32 %55, %37
  br i1 %56, label %75, label %50

57:                                               ; preds = %50, %45
  %58 = phi i32 [ %40, %45 ], [ %51, %50 ]
  %59 = icmp slt i32 %58, %37
  br i1 %59, label %60, label %75

60:                                               ; preds = %68, %57
  %61 = phi i32 [ %71, %68 ], [ 255, %57 ]
  %62 = phi i32 [ %64, %68 ], [ %58, %57 ]
  %63 = phi ptr [ %70, %68 ], [ %29, %57 ]
  %64 = add nsw i32 %62, 1
  %65 = getelementptr i16, ptr %38, i32 %62
  %66 = load i16, ptr %65, align 2
  switch i16 %66, label %67 [
    i16 32, label %75
    i16 10, label %75
    i16 0, label %75
    i16 47, label %68
  ]

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %60
  %69 = phi i16 [ %66, %67 ], [ 92, %60 ]
  %70 = getelementptr i16, ptr %63, i32 1
  store i16 %69, ptr %63, align 2
  %71 = add nsw i32 %61, -1
  %72 = icmp ne i32 %71, 0
  %73 = icmp slt i32 %64, %37
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %60, label %75

75:                                               ; preds = %68, %60, %60, %60, %57, %54
  %76 = phi ptr [ %29, %57 ], [ %70, %68 ], [ %63, %60 ], [ %63, %60 ], [ %63, %60 ], [ %29, %54 ]
  %77 = phi i32 [ %58, %57 ], [ %64, %68 ], [ %64, %60 ], [ %64, %60 ], [ %64, %60 ], [ %37, %54 ]
  store i16 0, ptr %76, align 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %178, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %13, align 4
  %81 = getelementptr i16, ptr %80, i32 %77
  store ptr %81, ptr %13, align 4
  %82 = load i32, ptr %14, align 4
  %83 = sub i32 %82, %77
  store i32 %83, ptr %14, align 4
  %84 = load ptr, ptr %15, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %107

86:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) @__const.efi_open_volume.fs_proto, i32 16, i1 false) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #5
  store ptr null, ptr %12, align 4, !annotation !9
  %87 = load ptr, ptr @efi_system_table, align 4
  %88 = getelementptr inbounds %struct.anon.0, ptr %87, i32 0, i32 10
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.anon.6, ptr %89, i32 0, i32 17
  %91 = load ptr, ptr %90, align 8
  %92 = load ptr, ptr %31, align 4
  %93 = call i32 %91(ptr noundef %92, ptr noundef nonnull %11, ptr noundef nonnull %12) #6
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %86
  %96 = load ptr, ptr %12, align 4
  %97 = getelementptr inbounds %struct.efi_simple_file_system_protocol, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 8
  %99 = call i32 %98(ptr noundef %96, ptr noundef nonnull %15) #6
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #5
  %102 = load ptr, ptr %15, align 4
  br label %107

103:                                              ; preds = %95, %86
  %104 = phi ptr [ @.str.2, %86 ], [ @.str.3, %95 ]
  %105 = phi i32 [ %93, %86 ], [ %99, %95 ]
  %106 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull %104) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %17) #5
  br label %213

107:                                              ; preds = %101, %79
  %108 = phi ptr [ %102, %101 ], [ %84, %79 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) @__const.efi_open_file.info_guid, i32 16, i1 false) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #5
  store ptr null, ptr %9, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #5
  %109 = getelementptr inbounds %struct.efi_file_protocol, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 8
  %111 = call i32 %110(ptr noundef %108, ptr noundef nonnull %9, ptr noundef %29, i64 noundef 1, i64 noundef 0) #6
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %107
  %114 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.4, ptr noundef %29) #6
  br label %180

115:                                              ; preds = %107
  store i32 592, ptr %10, align 4
  %116 = load ptr, ptr %9, align 4
  %117 = getelementptr inbounds %struct.efi_file_protocol, ptr %116, i32 0, i32 8
  %118 = load ptr, ptr %117, align 4
  %119 = call i32 %118(ptr noundef %116, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %17) #6
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.5) #6
  %123 = load ptr, ptr %9, align 4
  %124 = getelementptr inbounds %struct.efi_file_protocol, ptr %123, i32 0, i32 2
  %125 = load ptr, ptr %124, align 4
  %126 = call i32 %125(ptr noundef %123) #6
  br label %180

127:                                              ; preds = %115
  %128 = load ptr, ptr %9, align 4
  %129 = load i64, ptr %32, align 8
  %130 = trunc i64 %129 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #5
  %131 = add i32 %36, %130
  %132 = add i32 %131, -1
  %133 = or i32 %132, 4095
  %134 = add i32 %133, 1
  %135 = add i32 %36, -1
  %136 = or i32 %135, 4095
  %137 = add i32 %136, 1
  %138 = icmp ugt i32 %134, %137
  br i1 %138, label %139, label %158

139:                                              ; preds = %127
  %140 = load i32, ptr %16, align 4
  br i1 %33, label %141, label %144

141:                                              ; preds = %139
  %142 = call i32 @efi_allocate_pages(i32 noundef %131, ptr noundef nonnull %16, i32 noundef %3) #6
  %143 = icmp eq i32 %142, -2147483639
  br i1 %143, label %144, label %146

144:                                              ; preds = %141, %139
  %145 = call i32 @efi_allocate_pages(i32 noundef %131, ptr noundef nonnull %16, i32 noundef %4) #6
  br label %146

146:                                              ; preds = %144, %141
  %147 = phi i32 [ %145, %144 ], [ %142, %141 ]
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = icmp eq i32 %140, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %149
  %152 = load i32, ptr %16, align 4
  %153 = inttoptr i32 %152 to ptr
  %154 = inttoptr i32 %140 to ptr
  %155 = call ptr @memcpy(ptr noundef %153, ptr noundef nonnull %154, i32 noundef %36) #6
  call void @efi_free(i32 noundef %36, i32 noundef %140) #6
  br label %158

156:                                              ; preds = %146
  %157 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str) #6
  br label %199

158:                                              ; preds = %151, %149, %127
  %159 = icmp eq i32 %130, 0
  br i1 %159, label %182, label %160

160:                                              ; preds = %158
  %161 = load i32, ptr %16, align 4
  %162 = inttoptr i32 %161 to ptr
  %163 = getelementptr i8, ptr %162, i32 %36
  %164 = getelementptr inbounds %struct.efi_file_protocol, ptr %128, i32 0, i32 4
  br label %165

165:                                              ; preds = %173, %160
  %166 = phi ptr [ %163, %160 ], [ %175, %173 ]
  %167 = phi i32 [ %130, %160 ], [ %176, %173 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #5
  store i32 %167, ptr %18, align 4
  %168 = load ptr, ptr %164, align 4
  %169 = call i32 %168(ptr noundef %128, ptr noundef nonnull %18, ptr noundef %166) #6
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %165
  %172 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #5
  br label %199

173:                                              ; preds = %165
  %174 = load i32, ptr %18, align 4
  %175 = getelementptr i8, ptr %166, i32 %174
  %176 = sub i32 %167, %174
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #5
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %182, label %165

178:                                              ; preds = %187, %75, %47, %26
  %179 = phi i32 [ 0, %26 ], [ %36, %47 ], [ %36, %75 ], [ %131, %187 ]
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %17) #5
  br label %190

180:                                              ; preds = %121, %113
  %181 = phi i32 [ %119, %121 ], [ %111, %113 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %17) #5
  br label %205

182:                                              ; preds = %173, %158
  %183 = getelementptr inbounds %struct.efi_file_protocol, ptr %128, i32 0, i32 2
  %184 = load ptr, ptr %183, align 4
  %185 = call i32 %184(ptr noundef %128) #6
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %17) #5
  %186 = icmp sgt i32 %77, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load i32, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 592, ptr nonnull %17) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(592) %17, i8 0, i32 592, i1 false), !annotation !9
  %189 = icmp slt i32 %30, %188
  br i1 %189, label %35, label %178

190:                                              ; preds = %182, %178
  %191 = phi i32 [ %179, %178 ], [ %131, %182 ]
  %192 = load i32, ptr %16, align 4
  store i32 %192, ptr %5, align 4
  store i32 %191, ptr %6, align 4
  %193 = load ptr, ptr %15, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %213, label %195

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.efi_file_protocol, ptr %193, i32 0, i32 2
  %197 = load ptr, ptr %196, align 4
  %198 = call i32 %197(ptr noundef nonnull %193) #6
  br label %213

199:                                              ; preds = %171, %156
  %200 = phi i32 [ %169, %171 ], [ %147, %156 ]
  %201 = phi i32 [ %131, %171 ], [ %36, %156 ]
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %17) #5
  %202 = getelementptr inbounds %struct.efi_file_protocol, ptr %128, i32 0, i32 2
  %203 = load ptr, ptr %202, align 4
  %204 = call i32 %203(ptr noundef %128) #6
  br label %205

205:                                              ; preds = %199, %180
  %206 = phi i32 [ %201, %199 ], [ %36, %180 ]
  %207 = phi i32 [ %200, %199 ], [ %181, %180 ]
  %208 = load ptr, ptr %15, align 4
  %209 = getelementptr inbounds %struct.efi_file_protocol, ptr %208, i32 0, i32 2
  %210 = load ptr, ptr %209, align 4
  %211 = call i32 %210(ptr noundef %208) #6
  %212 = load i32, ptr %16, align 4
  call void @efi_free(i32 noundef %206, i32 noundef %212) #6
  br label %213

213:                                              ; preds = %205, %195, %190, %103, %7
  %214 = phi i32 [ %207, %205 ], [ -2147483646, %7 ], [ 0, %195 ], [ 0, %190 ], [ %105, %103 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #5
  ret i32 %214
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid optsize
declare hidden void @efi_apply_loadoptions_quirk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_allocate_pages(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid optsize
declare hidden void @efi_free(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid optsize "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind optsize "no-builtins" }

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
