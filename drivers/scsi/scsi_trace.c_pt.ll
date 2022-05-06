; ModuleID = '/llk/IR/drivers/scsi/scsi_trace.c_pt.bc'
source_filename = "../drivers/scsi/scsi_trace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"lba=%u txlen=%u\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"lba=%u txlen=%u protect=%u\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" unmap=%u\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"lba=%llu txlen=%u protect=%u\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"regions=%u\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"READ_CAPACITY_16\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"GET_LBA_STATUS\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%s lba=%llu alloc_len=%u\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"VERIFY\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"WRITE_SAME\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"%s_32 lba=%llu txlen=%u protect=%u ei_lbrt=%u\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"REPORT_IDENTIFYING_INFORMATION\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"REPORT_TARGET_PORT_GROUPS\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"REPORT_ALIASES\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"REPORT_SUPPORTED_OPERATION_CODES\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"REPORT_SUPPORTED_TASK_MANAGEMENT_FUNCTIONS\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"REPORT_PRIORITY\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"REPORT_TIMESTAMP\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"MANAGEMENT_PROTOCOL_IN\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"%s alloc_len=%u\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"SET_IDENTIFYING_INFORMATION\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"SET_TARGET_PORT_GROUPS\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"CHANGE_ALIASES\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"SET_PRIORITY\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"SET_TIMESTAMP\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"MANAGEMENT_PROTOCOL_OUT\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"REPORT_ZONES\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"%s zone=%llu alloc_len=%u options=%u partial=%u\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"CLOSE_ZONE\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"FINISH_ZONE\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"OPEN_ZONE\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"RESET_WRITE_POINTER\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"%s zone=%llu all=%u\00", align 1
@switch.table.scsi_trace_parse_cdb = private unnamed_addr constant [5 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.9, ptr @.str.12], align 4
@switch.table.scsi_trace_parse_cdb.36 = private unnamed_addr constant [12 x ptr] [ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], align 4
@switch.table.scsi_trace_parse_cdb.37 = private unnamed_addr constant [11 x ptr] [ptr @.str.23, ptr @.str.23, ptr @.str.23, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.23, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.28], align 4
@switch.table.scsi_trace_parse_cdb.38 = private unnamed_addr constant [4 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @scsi_trace_parse_cdb(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i8, ptr %1, align 1
  switch i8 %4, label %289 [
    i8 8, label %5
    i8 10, label %5
    i8 40, label %31
    i8 47, label %31
    i8 42, label %31
    i8 65, label %31
    i8 -88, label %57
    i8 -81, label %57
    i8 -86, label %57
    i8 -120, label %74
    i8 -113, label %74
    i8 -118, label %74
    i8 -109, label %74
    i8 66, label %99
    i8 -98, label %112
    i8 127, label %134
    i8 -93, label %186
    i8 -92, label %212
    i8 -107, label %238
    i8 -108, label %264
  ]

5:                                                ; preds = %3, %3
  %6 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %7, i32 %9) #3
  %11 = getelementptr i8, ptr %0, i32 %10
  %12 = getelementptr i8, ptr %1, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = getelementptr i8, ptr %1, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 8
  %20 = getelementptr i8, ptr %1, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr i8, ptr %1, i32 4
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  %26 = zext i8 %24 to i32
  %27 = select i1 %25, i32 256, i32 %26
  %28 = and i32 %15, 2031616
  %29 = or i32 %19, %28
  %30 = or i32 %29, %22
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %30, i32 noundef %27) #3
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #3
  br label %296

31:                                               ; preds = %3, %3, %3, %3
  %32 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr i8, ptr %1, i32 2
  %37 = load i32, ptr %36, align 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #3
  %39 = getelementptr i8, ptr %1, i32 7
  %40 = load i16, ptr %39, align 1
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #3
  %42 = zext i16 %41 to i32
  %43 = getelementptr i8, ptr %1, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = lshr i8 %44, 5
  %46 = zext i8 %45 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %38, i32 noundef %42, i32 noundef %46) #3
  %47 = load i8, ptr %1, align 1
  %48 = icmp eq i8 %47, 65
  br i1 %48, label %49, label %54

49:                                               ; preds = %31
  %50 = load i8, ptr %43, align 1
  %51 = lshr i8 %50, 3
  %52 = and i8 %51, 1
  %53 = zext i8 %52 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %53) #3
  br label %54

54:                                               ; preds = %49, %31
  %55 = tail call i32 @llvm.umin.i32(i32 %33, i32 %35) #3
  %56 = getelementptr i8, ptr %0, i32 %55
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #3
  br label %296

57:                                               ; preds = %3, %3, %3
  %58 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = tail call i32 @llvm.umin.i32(i32 %59, i32 %61) #3
  %63 = getelementptr i8, ptr %0, i32 %62
  %64 = getelementptr i8, ptr %1, i32 2
  %65 = load i32, ptr %64, align 1
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #3
  %67 = getelementptr i8, ptr %1, i32 6
  %68 = load i32, ptr %67, align 1
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #3
  %70 = getelementptr i8, ptr %1, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = lshr i8 %71, 5
  %73 = zext i8 %72 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %66, i32 noundef %69, i32 noundef %73) #3
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #3
  br label %296

74:                                               ; preds = %3, %3, %3, %3
  %75 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %76 = load i32, ptr %75, align 8
  %77 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr i8, ptr %1, i32 2
  %80 = load i64, ptr %79, align 1
  %81 = tail call i64 @llvm.bswap.i64(i64 %80) #3
  %82 = getelementptr i8, ptr %1, i32 10
  %83 = load i32, ptr %82, align 1
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #3
  %85 = getelementptr i8, ptr %1, i32 1
  %86 = load i8, ptr %85, align 1
  %87 = lshr i8 %86, 5
  %88 = zext i8 %87 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i64 noundef %81, i32 noundef %84, i32 noundef %88) #3
  %89 = load i8, ptr %1, align 1
  %90 = icmp eq i8 %89, -109
  br i1 %90, label %91, label %96

91:                                               ; preds = %74
  %92 = load i8, ptr %85, align 1
  %93 = lshr i8 %92, 3
  %94 = and i8 %93, 1
  %95 = zext i8 %94 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %95) #3
  br label %96

96:                                               ; preds = %91, %74
  %97 = tail call i32 @llvm.umin.i32(i32 %76, i32 %78) #3
  %98 = getelementptr i8, ptr %0, i32 %97
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #3
  br label %296

99:                                               ; preds = %3
  %100 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %101 = load i32, ptr %100, align 8
  %102 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = tail call i32 @llvm.umin.i32(i32 %101, i32 %103) #3
  %105 = getelementptr i8, ptr %0, i32 %104
  %106 = getelementptr i8, ptr %1, i32 7
  %107 = load i16, ptr %106, align 1
  %108 = tail call i16 @llvm.bswap.i16(i16 %107) #3
  %109 = zext i16 %108 to i32
  %110 = add nsw i32 %109, -8
  %111 = lshr i32 %110, 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %111) #3
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #3
  br label %296

112:                                              ; preds = %3
  %113 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %114 = load i32, ptr %113, align 8
  %115 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr i8, ptr %1, i32 1
  %118 = load i8, ptr %117, align 1
  %119 = and i8 %118, 31
  %120 = zext i8 %119 to i32
  switch i32 %120, label %122 [
    i32 16, label %123
    i32 18, label %121
  ]

121:                                              ; preds = %112
  br label %123

122:                                              ; preds = %112
  tail call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull @.str.7) #3
  br label %131

123:                                              ; preds = %121, %112
  %124 = phi ptr [ @.str.6, %121 ], [ @.str.5, %112 ]
  %125 = getelementptr i8, ptr %1, i32 2
  %126 = load i64, ptr %125, align 1
  %127 = tail call i64 @llvm.bswap.i64(i64 %126) #3
  %128 = getelementptr i8, ptr %1, i32 10
  %129 = load i32, ptr %128, align 1
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #3
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %124, i64 noundef %127, i32 noundef %130) #3
  br label %131

131:                                              ; preds = %123, %122
  %132 = tail call i32 @llvm.umin.i32(i32 %114, i32 %116) #3
  %133 = getelementptr i8, ptr %0, i32 %132
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #3
  br label %296

134:                                              ; preds = %3
  %135 = getelementptr i8, ptr %1, i32 8
  %136 = load i16, ptr %135, align 1
  %137 = tail call i16 @llvm.bswap.i16(i16 %136) #3
  switch i16 %137, label %177 [
    i16 9, label %138
    i16 10, label %138
    i16 11, label %138
    i16 13, label %138
  ]

138:                                              ; preds = %134, %134, %134, %134
  %139 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %140 = load i32, ptr %139, align 8
  %141 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %142 = load i32, ptr %141, align 4
  %143 = add i16 %137, -9
  %144 = icmp ult i16 %143, 5
  br i1 %144, label %146, label %145

145:                                              ; preds = %146, %138
  tail call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull @.str.7) #3
  br label %175

146:                                              ; preds = %138
  %147 = trunc i16 %143 to i8
  %148 = lshr i8 23, %147
  %149 = and i8 %148, 1
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %145, label %151

151:                                              ; preds = %146
  %152 = sext i16 %143 to i32
  %153 = getelementptr inbounds [5 x ptr], ptr @switch.table.scsi_trace_parse_cdb, i32 0, i32 %152
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr i8, ptr %1, i32 12
  %156 = load i64, ptr %155, align 1
  %157 = tail call i64 @llvm.bswap.i64(i64 %156) #3
  %158 = getelementptr i8, ptr %1, i32 20
  %159 = load i32, ptr %158, align 1
  %160 = tail call i32 @llvm.bswap.i32(i32 %159) #3
  %161 = getelementptr i8, ptr %1, i32 28
  %162 = load i32, ptr %161, align 1
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #3
  %164 = getelementptr i8, ptr %1, i32 10
  %165 = load i8, ptr %164, align 1
  %166 = lshr i8 %165, 5
  %167 = zext i8 %166 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull %154, i64 noundef %157, i32 noundef %163, i32 noundef %167, i32 noundef %160) #3
  %168 = load i16, ptr %135, align 1
  %169 = icmp eq i16 %168, 3328
  br i1 %169, label %170, label %175

170:                                              ; preds = %151
  %171 = load i8, ptr %164, align 1
  %172 = lshr i8 %171, 3
  %173 = and i8 %172, 1
  %174 = zext i8 %173 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %174) #3
  br label %175

175:                                              ; preds = %170, %151, %145
  %176 = tail call i32 @llvm.umin.i32(i32 %140, i32 %142) #3
  br label %183

177:                                              ; preds = %134
  %178 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %179 = load i32, ptr %178, align 8
  %180 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = tail call i32 @llvm.umin.i32(i32 %179, i32 %181) #3
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 45) #3
  br label %183

183:                                              ; preds = %177, %175
  %184 = phi i32 [ %182, %177 ], [ %176, %175 ]
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #3
  %185 = getelementptr i8, ptr %0, i32 %184
  br label %296

186:                                              ; preds = %3
  %187 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %188 = load i32, ptr %187, align 8
  %189 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %190 = load i32, ptr %189, align 4
  %191 = getelementptr i8, ptr %1, i32 1
  %192 = load i8, ptr %191, align 1
  %193 = and i8 %192, 31
  %194 = zext i8 %193 to i32
  %195 = add nsw i32 %194, -5
  %196 = icmp ult i32 %195, 12
  br i1 %196, label %198, label %197

197:                                              ; preds = %198, %186
  tail call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull @.str.7) #3
  br label %209

198:                                              ; preds = %186
  %199 = trunc i32 %195 to i16
  %200 = lshr i16 4065, %199
  %201 = and i16 %200, 1
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %197, label %203

203:                                              ; preds = %198
  %204 = getelementptr inbounds [12 x ptr], ptr @switch.table.scsi_trace_parse_cdb.36, i32 0, i32 %195
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr i8, ptr %1, i32 6
  %207 = load i32, ptr %206, align 1
  %208 = tail call i32 @llvm.bswap.i32(i32 %207) #3
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull %205, i32 noundef %208) #3
  br label %209

209:                                              ; preds = %203, %197
  %210 = tail call i32 @llvm.umin.i32(i32 %188, i32 %190) #3
  %211 = getelementptr i8, ptr %0, i32 %210
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #3
  br label %296

212:                                              ; preds = %3
  %213 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %214 = load i32, ptr %213, align 8
  %215 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %216 = load i32, ptr %215, align 4
  %217 = getelementptr i8, ptr %1, i32 1
  %218 = load i8, ptr %217, align 1
  %219 = and i8 %218, 31
  %220 = zext i8 %219 to i32
  %221 = add nsw i32 %220, -6
  %222 = icmp ult i32 %221, 11
  br i1 %222, label %224, label %223

223:                                              ; preds = %224, %212
  tail call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull @.str.7) #3
  br label %235

224:                                              ; preds = %212
  %225 = trunc i32 %221 to i16
  %226 = lshr i16 1841, %225
  %227 = and i16 %226, 1
  %228 = icmp eq i16 %227, 0
  br i1 %228, label %223, label %229

229:                                              ; preds = %224
  %230 = getelementptr inbounds [11 x ptr], ptr @switch.table.scsi_trace_parse_cdb.37, i32 0, i32 %221
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr i8, ptr %1, i32 6
  %233 = load i32, ptr %232, align 1
  %234 = tail call i32 @llvm.bswap.i32(i32 %233) #3
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull %231, i32 noundef %234) #3
  br label %235

235:                                              ; preds = %229, %223
  %236 = tail call i32 @llvm.umin.i32(i32 %214, i32 %216) #3
  %237 = getelementptr i8, ptr %0, i32 %236
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #3
  br label %296

238:                                              ; preds = %3
  %239 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %240 = load i32, ptr %239, align 8
  %241 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %242 = load i32, ptr %241, align 4
  %243 = getelementptr i8, ptr %1, i32 1
  %244 = load i8, ptr %243, align 1
  %245 = and i8 %244, 31
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %247, label %260

247:                                              ; preds = %238
  %248 = getelementptr i8, ptr %1, i32 2
  %249 = load i64, ptr %248, align 1
  %250 = tail call i64 @llvm.bswap.i64(i64 %249) #3
  %251 = getelementptr i8, ptr %1, i32 10
  %252 = load i32, ptr %251, align 1
  %253 = tail call i32 @llvm.bswap.i32(i32 %252) #3
  %254 = getelementptr i8, ptr %1, i32 14
  %255 = load i8, ptr %254, align 1
  %256 = and i8 %255, 63
  %257 = zext i8 %256 to i32
  %258 = lshr i8 %255, 7
  %259 = zext i8 %258 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i64 noundef %250, i32 noundef %253, i32 noundef %257, i32 noundef %259) #3
  br label %261

260:                                              ; preds = %238
  tail call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull @.str.7) #3
  br label %261

261:                                              ; preds = %260, %247
  %262 = tail call i32 @llvm.umin.i32(i32 %240, i32 %242) #3
  %263 = getelementptr i8, ptr %0, i32 %262
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #3
  br label %296

264:                                              ; preds = %3
  %265 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %266 = load i32, ptr %265, align 8
  %267 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %268 = load i32, ptr %267, align 4
  %269 = getelementptr i8, ptr %1, i32 1
  %270 = load i8, ptr %269, align 1
  %271 = and i8 %270, 31
  %272 = zext i8 %271 to i32
  %273 = add nsw i32 %272, -1
  %274 = icmp ult i32 %273, 4
  br i1 %274, label %276, label %275

275:                                              ; preds = %264
  tail call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull @.str.7) #3
  br label %286

276:                                              ; preds = %264
  %277 = getelementptr inbounds [4 x ptr], ptr @switch.table.scsi_trace_parse_cdb.38, i32 0, i32 %273
  %278 = load ptr, ptr %277, align 4
  %279 = getelementptr i8, ptr %1, i32 2
  %280 = load i64, ptr %279, align 1
  %281 = tail call i64 @llvm.bswap.i64(i64 %280) #3
  %282 = getelementptr i8, ptr %1, i32 14
  %283 = load i8, ptr %282, align 1
  %284 = and i8 %283, 1
  %285 = zext i8 %284 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull %278, i64 noundef %281, i32 noundef %285) #3
  br label %286

286:                                              ; preds = %276, %275
  %287 = tail call i32 @llvm.umin.i32(i32 %266, i32 %268) #3
  %288 = getelementptr i8, ptr %0, i32 %287
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #3
  br label %296

289:                                              ; preds = %3
  %290 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %291 = load i32, ptr %290, align 8
  %292 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %293 = load i32, ptr %292, align 4
  %294 = tail call i32 @llvm.umin.i32(i32 %291, i32 %293) #3
  %295 = getelementptr i8, ptr %0, i32 %294
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 45) #3
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 0) #3
  br label %296

296:                                              ; preds = %289, %286, %261, %235, %209, %183, %131, %99, %96, %57, %54, %5
  %297 = phi ptr [ %295, %289 ], [ %288, %286 ], [ %263, %261 ], [ %237, %235 ], [ %211, %209 ], [ %185, %183 ], [ %133, %131 ], [ %105, %99 ], [ %98, %96 ], [ %63, %57 ], [ %56, %54 ], [ %11, %5 ]
  ret ptr %297
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
