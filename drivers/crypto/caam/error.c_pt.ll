; ModuleID = '/llk/IR/drivers/crypto/caam/error.c_pt.bc'
source_filename = "../drivers/crypto/caam/error.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caam_dump_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22caam_dump_sg\22\09\09\09\09\09"
module asm "__kstrtabns_caam_dump_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caam_little_end:\09\09\09\09\09"
module asm "\09.asciz \09\22caam_little_end\22\09\09\09\09\09"
module asm "__kstrtabns_caam_little_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caam_imx:\09\09\09\09\09"
module asm "\09.asciz \09\22caam_imx\22\09\09\09\09\09"
module asm "__kstrtabns_caam_imx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caam_ptr_sz:\09\09\09\09\09"
module asm "\09.asciz \09\22caam_ptr_sz\22\09\09\09\09\09"
module asm "__kstrtabns_caam_ptr_sz:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caam_strstatus:\09\09\09\09\09"
module asm "\09.asciz \09\22caam_strstatus\22\09\09\09\09\09"
module asm "__kstrtabns_caam_strstatus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.stat_src = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.144 = type { i8, ptr }
%struct.anon.145 = type { i8, ptr }

@__kstrtab_caam_dump_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_caam_dump_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_caam_dump_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caam_dump_sg to i32), ptr @__kstrtab_caam_dump_sg, ptr @__kstrtabns_caam_dump_sg }, section "___ksymtab+caam_dump_sg", align 4
@caam_little_end = dso_local global i8 0, align 1
@__kstrtab_caam_little_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_caam_little_end = external dso_local constant [0 x i8], align 1
@__ksymtab_caam_little_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caam_little_end to i32), ptr @__kstrtab_caam_little_end, ptr @__kstrtabns_caam_little_end }, section "___ksymtab+caam_little_end", align 4
@caam_imx = dso_local global i8 0, align 1
@__kstrtab_caam_imx = external dso_local constant [0 x i8], align 1
@__kstrtabns_caam_imx = external dso_local constant [0 x i8], align 1
@__ksymtab_caam_imx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caam_imx to i32), ptr @__kstrtab_caam_imx, ptr @__kstrtabns_caam_imx }, section "___ksymtab+caam_imx", align 4
@caam_ptr_sz = dso_local global i32 0, align 4
@__kstrtab_caam_ptr_sz = external dso_local constant [0 x i8], align 1
@__kstrtabns_caam_ptr_sz = external dso_local constant [0 x i8], align 1
@__ksymtab_caam_ptr_sz = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caam_ptr_sz to i32), ptr @__kstrtab_caam_ptr_sz, ptr @__kstrtabns_caam_ptr_sz }, section "___ksymtab+caam_ptr_sz", align 4
@caam_strstatus.status_src = internal unnamed_addr constant <{ [8 x %struct.stat_src], [8 x %struct.stat_src] }> <{ [8 x %struct.stat_src] [%struct.stat_src { ptr null, ptr @.str }, %struct.stat_src zeroinitializer, %struct.stat_src { ptr @report_ccb_status, ptr @.str.1 }, %struct.stat_src { ptr @report_jump_status, ptr @.str.2 }, %struct.stat_src { ptr @report_deco_status, ptr @.str.3 }, %struct.stat_src { ptr @report_qi_status, ptr @.str.4 }, %struct.stat_src { ptr @report_jr_status, ptr @.str.5 }, %struct.stat_src { ptr @report_cond_code_status, ptr @.str.6 }], [8 x %struct.stat_src] zeroinitializer }>, align 4
@.str = private unnamed_addr constant [9 x i8] c"No error\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"CCB\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Jump\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"DECO\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Queue Manager Interface\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Job Ring\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Condition Code\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%d: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"%d: unknown error source\0A\00", align 1
@__kstrtab_caam_strstatus = external dso_local constant [0 x i8], align 1
@__kstrtabns_caam_strstatus = external dso_local constant [0 x i8], align 1
@__ksymtab_caam_strstatus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caam_strstatus to i32), ptr @__kstrtab_caam_strstatus, ptr @__kstrtabns_caam_strstatus }, section "___ksymtab+caam_strstatus", align 4
@__UNIQUE_ID_license467 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description468 = internal constant [37 x i8] c"description=FSL CAAM error reporting\00", section ".modinfo", align 1
@__UNIQUE_ID_author469 = internal constant [31 x i8] c"author=Freescale Semiconductor\00", section ".modinfo", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"unidentified cha_id value 0x\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"jump tgt desc idx\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"desc idx\00", align 1
@cha_id_list = internal unnamed_addr constant [13 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@rng_err_id_list = internal unnamed_addr constant [13 x ptr] [ptr @.str.15, ptr @.str.15, ptr @.str.15, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.15, ptr @.str.35, ptr @.str.36], align 4
@err_id_list = internal unnamed_addr constant [16 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], align 4
@report_ccb_status._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.report_ccb_status = private unnamed_addr constant [18 x i8] c"report_ccb_status\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"%08x: %s: %s %d: %s%s: %s%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"AES\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"DES\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"ARC4\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"MDHA\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"RNG\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"SNOW f8\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Kasumi f8/9\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"PKHA\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"CRCA\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"SNOW f9\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"ZUCE\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"ZUCA\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Instantiate\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Not instantiated\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Test instantiate\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"Prediction resistance\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"Prediction resistance and test request\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"Uninstantiate\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"Secure key generation\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"Hardware error\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"Continuous check\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"No error.\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"Mode error.\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"Data size error.\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"Key size error.\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"PKHA A memory size error.\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"PKHA B memory size error.\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"Data arrived out of sequence error.\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"PKHA divide-by-zero error.\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"PKHA modulus even error.\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"DES key parity error.\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"ICV check failed.\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"Hardware error.\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"Unsupported CCM AAD size.\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"Class 1 CHA is not reset\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"Invalid CHA combination was selected\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"Invalid CHA selected.\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"%08x: %s: %s() not implemented\0A\00", align 1
@__func__.report_jump_status = private unnamed_addr constant [19 x i8] c"report_jump_status\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"unidentified error value 0x\00", align 1
@desc_error_list = internal unnamed_addr constant [52 x %struct.anon.144] [%struct.anon.144 { i8 0, ptr @.str.37 }, %struct.anon.144 { i8 1, ptr @.str.56 }, %struct.anon.144 { i8 2, ptr @.str.57 }, %struct.anon.144 { i8 3, ptr @.str.58 }, %struct.anon.144 { i8 4, ptr @.str.59 }, %struct.anon.144 { i8 5, ptr @.str.60 }, %struct.anon.144 { i8 6, ptr @.str.61 }, %struct.anon.144 { i8 7, ptr @.str.62 }, %struct.anon.144 { i8 8, ptr @.str.63 }, %struct.anon.144 { i8 9, ptr @.str.64 }, %struct.anon.144 { i8 10, ptr @.str.65 }, %struct.anon.144 { i8 11, ptr @.str.66 }, %struct.anon.144 { i8 12, ptr @.str.67 }, %struct.anon.144 { i8 13, ptr @.str.68 }, %struct.anon.144 { i8 14, ptr @.str.69 }, %struct.anon.144 { i8 15, ptr @.str.70 }, %struct.anon.144 { i8 16, ptr @.str.71 }, %struct.anon.144 { i8 17, ptr @.str.72 }, %struct.anon.144 { i8 18, ptr @.str.73 }, %struct.anon.144 { i8 19, ptr @.str.74 }, %struct.anon.144 { i8 20, ptr @.str.75 }, %struct.anon.144 { i8 21, ptr @.str.76 }, %struct.anon.144 { i8 22, ptr @.str.77 }, %struct.anon.144 { i8 23, ptr @.str.60 }, %struct.anon.144 { i8 26, ptr @.str.78 }, %struct.anon.144 { i8 27, ptr @.str.79 }, %struct.anon.144 { i8 28, ptr @.str.80 }, %struct.anon.144 { i8 29, ptr @.str.81 }, %struct.anon.144 { i8 30, ptr @.str.82 }, %struct.anon.144 { i8 31, ptr @.str.83 }, %struct.anon.144 { i8 32, ptr @.str.84 }, %struct.anon.144 { i8 33, ptr @.str.85 }, %struct.anon.144 { i8 34, ptr @.str.86 }, %struct.anon.144 { i8 35, ptr @.str.87 }, %struct.anon.144 { i8 36, ptr @.str.88 }, %struct.anon.144 { i8 -128, ptr @.str.89 }, %struct.anon.144 { i8 -127, ptr @.str.90 }, %struct.anon.144 { i8 -126, ptr @.str.91 }, %struct.anon.144 { i8 -125, ptr @.str.92 }, %struct.anon.144 { i8 -124, ptr @.str.93 }, %struct.anon.144 { i8 -123, ptr @.str.94 }, %struct.anon.144 { i8 -122, ptr @.str.95 }, %struct.anon.144 { i8 -121, ptr @.str.96 }, %struct.anon.144 { i8 -120, ptr @.str.97 }, %struct.anon.144 { i8 -119, ptr @.str.98 }, %struct.anon.144 { i8 -63, ptr @.str.99 }, %struct.anon.144 { i8 -62, ptr @.str.100 }, %struct.anon.144 { i8 -60, ptr @.str.101 }, %struct.anon.144 { i8 -59, ptr @.str.102 }, %struct.anon.144 { i8 -56, ptr @.str.103 }, %struct.anon.144 { i8 -16, ptr @.str.104 }, %struct.anon.144 { i8 -15, ptr @.str.105 }], align 4
@.str.55 = private unnamed_addr constant [23 x i8] c"%08x: %s: %s %d: %s%s\0A\00", align 1
@.str.56 = private unnamed_addr constant [97 x i8] c"SGT Length Error. The descriptor is trying to read more data than is contained in the SGT table.\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"SGT Null Entry Error.\00", align 1
@.str.58 = private unnamed_addr constant [79 x i8] c"Job Ring Control Error. There is a bad value in the Job Ring Control register.\00", align 1
@.str.59 = private unnamed_addr constant [69 x i8] c"Invalid Descriptor Command. The Descriptor Command field is invalid.\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"Reserved.\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"Invalid KEY Command\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"Invalid LOAD Command\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"Invalid STORE Command\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"Invalid OPERATION Command\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"Invalid FIFO LOAD Command\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"Invalid FIFO STORE Command\00", align 1
@.str.67 = private unnamed_addr constant [30 x i8] c"Invalid MOVE/MOVE_LEN Command\00", align 1
@.str.68 = private unnamed_addr constant [230 x i8] c"Invalid JUMP Command. A nonlocal JUMP Command is invalid because the target is not a Job Header Command, or the jump is from a Trusted Descriptor to a Job Descriptor, or because the target Descriptor contains a Shared Descriptor.\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"Invalid MATH Command\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"Invalid SIGNATURE Command\00", align 1
@.str.71 = private unnamed_addr constant [273 x i8] c"Invalid Sequence Command. A SEQ IN PTR OR SEQ OUT PTR Command is invalid or a SEQ KEY, SEQ LOAD, SEQ FIFO LOAD, or SEQ FIFO STORE decremented the input or output sequence length below 0. This error may result if a built-in PROTOCOL Command has encountered a malformed PDU.\00", align 1
@.str.72 = private unnamed_addr constant [53 x i8] c"Skip data type invalid. The type must be 0xE or 0xF.\00", align 1
@.str.73 = private unnamed_addr constant [31 x i8] c"Shared Descriptor Header Error\00", align 1
@.str.74 = private unnamed_addr constant [67 x i8] c"Header Error. Invalid length or parity, or certain other problems.\00", align 1
@.str.75 = private unnamed_addr constant [54 x i8] c"Burster Error. Burster has gotten to an illegal state\00", align 1
@.str.76 = private unnamed_addr constant [268 x i8] c"Context Register Length Error. The descriptor is trying to read or write past the end of the Context Register. A SEQ LOAD or SEQ STORE with the VLF bit set was executed with too large a length in the variable length register (VSOL for SEQ STORE or VSIL for SEQ LOAD).\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"DMA Error\00", align 1
@.str.78 = private unnamed_addr constant [27 x i8] c"Job failed due to JR reset\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"Job failed due to Fail Mode\00", align 1
@.str.80 = private unnamed_addr constant [34 x i8] c"DECO Watchdog timer timeout error\00", align 1
@.str.81 = private unnamed_addr constant [90 x i8] c"DECO tried to copy a key from another DECO but the other DECO's Key Registers were locked\00", align 1
@.str.82 = private unnamed_addr constant [78 x i8] c"DECO attempted to copy data from a DECO that had an unmasked Descriptor error\00", align 1
@.str.83 = private unnamed_addr constant [214 x i8] c"LIODN error. DECO was trying to share from itself or from another DECO but the two Non-SEQ LIODN values didn't match or the 'shared from' DECO's Descriptor required that the SEQ LIODNs be the same and they aren't.\00", align 1
@.str.84 = private unnamed_addr constant [58 x i8] c"DECO has completed a reset initiated via the DRR register\00", align 1
@.str.85 = private unnamed_addr constant [175 x i8] c"Nonce error. When using EKT (CCM) key encryption option in the FIFO STORE Command, the Nonce counter reached its maximum value and this encryption mode can no longer be used.\00", align 1
@.str.86 = private unnamed_addr constant [176 x i8] c"Meta data is too large (> 511 bytes) for TLS decap (input frame; block ciphers) and IPsec decap (output frame, when doing the next header byte update) and DCRC (output frame).\00", align 1
@.str.87 = private unnamed_addr constant [23 x i8] c"Read Input Frame error\00", align 1
@.str.88 = private unnamed_addr constant [38 x i8] c"JDKEK, TDKEK or TDSK not loaded error\00", align 1
@.str.89 = private unnamed_addr constant [23 x i8] c"DNR (do not run) error\00", align 1
@.str.90 = private unnamed_addr constant [27 x i8] c"undefined protocol command\00", align 1
@.str.91 = private unnamed_addr constant [23 x i8] c"invalid setting in PDB\00", align 1
@.str.92 = private unnamed_addr constant [23 x i8] c"Anti-replay LATE error\00", align 1
@.str.93 = private unnamed_addr constant [25 x i8] c"Anti-replay REPLAY error\00", align 1
@.str.94 = private unnamed_addr constant [25 x i8] c"Sequence number overflow\00", align 1
@.str.95 = private unnamed_addr constant [25 x i8] c"Sigver invalid signature\00", align 1
@.str.96 = private unnamed_addr constant [33 x i8] c"DSA Sign Illegal test descriptor\00", align 1
@.str.97 = private unnamed_addr constant [245 x i8] c"Protocol Format Error - A protocol has seen an error in the format of data received. When running RSA, this means that formatting with random padding was used, and did not follow the form: 0x00, 0x02, 8-to-N bytes of non-zero pad, 0x00, F data.\00", align 1
@.str.98 = private unnamed_addr constant [181 x i8] c"Protocol Size Error - A protocol has seen an error in size. When running RSA, pdb size N < (size of F) when no formatting is used; or pdb size N < (F + 11) when formatting is used.\00", align 1
@.str.99 = private unnamed_addr constant [35 x i8] c"Blob Command error: Undefined mode\00", align 1
@.str.100 = private unnamed_addr constant [50 x i8] c"Blob Command error: Secure Memory Blob mode error\00", align 1
@.str.101 = private unnamed_addr constant [55 x i8] c"Blob Command error: Black Blob key or input size error\00", align 1
@.str.102 = private unnamed_addr constant [44 x i8] c"Blob Command error: Invalid key destination\00", align 1
@.str.103 = private unnamed_addr constant [46 x i8] c"Blob Command error: Trusted/Secure mode error\00", align 1
@.str.104 = private unnamed_addr constant [74 x i8] c"IPsec TTL or hop limit field either came in as 0, or was decremented to 0\00", align 1
@.str.105 = private unnamed_addr constant [42 x i8] c"3GPP HFN matches or exceeds the Threshold\00", align 1
@qi_error_list = internal unnamed_addr constant [43 x %struct.anon.145] [%struct.anon.145 { i8 0, ptr @.str }, %struct.anon.145 { i8 31, ptr @.str.107 }, %struct.anon.145 { i8 32, ptr @.str.108 }, %struct.anon.145 { i8 33, ptr @.str.109 }, %struct.anon.145 { i8 35, ptr @.str.110 }, %struct.anon.145 { i8 37, ptr @.str.111 }, %struct.anon.145 { i8 48, ptr @.str.112 }, %struct.anon.145 { i8 49, ptr @.str.113 }, %struct.anon.145 { i8 50, ptr @.str.114 }, %struct.anon.145 { i8 51, ptr @.str.115 }, %struct.anon.145 { i8 52, ptr @.str.116 }, %struct.anon.145 { i8 53, ptr @.str.117 }, %struct.anon.145 { i8 54, ptr @.str.118 }, %struct.anon.145 { i8 65, ptr @.str.119 }, %struct.anon.145 { i8 66, ptr @.str.120 }, %struct.anon.145 { i8 67, ptr @.str.121 }, %struct.anon.145 { i8 68, ptr @.str.122 }, %struct.anon.145 { i8 69, ptr @.str.123 }, %struct.anon.145 { i8 70, ptr @.str.124 }, %struct.anon.145 { i8 72, ptr @.str.125 }, %struct.anon.145 { i8 73, ptr @.str.126 }, %struct.anon.145 { i8 75, ptr @.str.127 }, %struct.anon.145 { i8 81, ptr @.str.128 }, %struct.anon.145 { i8 82, ptr @.str.129 }, %struct.anon.145 { i8 83, ptr @.str.130 }, %struct.anon.145 { i8 84, ptr @.str.131 }, %struct.anon.145 { i8 -64, ptr @.str.132 }, %struct.anon.145 { i8 -63, ptr @.str.133 }, %struct.anon.145 { i8 -62, ptr @.str.134 }, %struct.anon.145 { i8 -61, ptr @.str.135 }, %struct.anon.145 { i8 -60, ptr @.str.136 }, %struct.anon.145 { i8 -59, ptr @.str.137 }, %struct.anon.145 { i8 -48, ptr @.str.138 }, %struct.anon.145 { i8 -47, ptr @.str.139 }, %struct.anon.145 { i8 -46, ptr @.str.140 }, %struct.anon.145 { i8 -45, ptr @.str.141 }, %struct.anon.145 { i8 -44, ptr @.str.142 }, %struct.anon.145 { i8 -43, ptr @.str.143 }, %struct.anon.145 { i8 -42, ptr @.str.144 }, %struct.anon.145 { i8 -41, ptr @.str.145 }, %struct.anon.145 { i8 -31, ptr @.str.146 }, %struct.anon.145 { i8 -30, ptr @.str.147 }, %struct.anon.145 { i8 -28, ptr @.str.148 }], align 4
@.str.106 = private unnamed_addr constant [16 x i8] c"%08x: %s: %s%s\0A\00", align 1
@.str.107 = private unnamed_addr constant [35 x i8] c"Job terminated by FQ or ICID flush\00", align 1
@.str.108 = private unnamed_addr constant [16 x i8] c"FD format error\00", align 1
@.str.109 = private unnamed_addr constant [24 x i8] c"FD command format error\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"FL format error\00", align 1
@.str.111 = private unnamed_addr constant [45 x i8] c"CRJD specified in FD, but not enabled in FLC\00", align 1
@.str.112 = private unnamed_addr constant [27 x i8] c"Max. buffer size too small\00", align 1
@.str.113 = private unnamed_addr constant [57 x i8] c"DHR exceeds max. buffer size (allocate mode, S/G format)\00", align 1
@.str.114 = private unnamed_addr constant [56 x i8] c"SGT exceeds max. buffer size (allocate mode, S/G format\00", align 1
@.str.115 = private unnamed_addr constant [36 x i8] c"Size over/underflow (allocate mode)\00", align 1
@.str.116 = private unnamed_addr constant [33 x i8] c"Size over/underflow (reuse mode)\00", align 1
@.str.117 = private unnamed_addr constant [62 x i8] c"Length exceeds max. short length (allocate mode, S/G/ format)\00", align 1
@.str.118 = private unnamed_addr constant [65 x i8] c"Memory footprint exceeds max. value (allocate mode, S/G/ format)\00", align 1
@.str.119 = private unnamed_addr constant [47 x i8] c"SBC frame format not supported (allocate mode)\00", align 1
@.str.120 = private unnamed_addr constant [59 x i8] c"Pool 0 invalid / pool 1 size < pool 0 size (allocate mode)\00", align 1
@.str.121 = private unnamed_addr constant [55 x i8] c"Annotation output enabled but ASAR = 0 (allocate mode)\00", align 1
@.str.122 = private unnamed_addr constant [62 x i8] c"Unsupported or reserved frame format or SGHR = 1 (reuse mode)\00", align 1
@.str.123 = private unnamed_addr constant [60 x i8] c"DHR correction underflow (reuse mode, single buffer format)\00", align 1
@.str.124 = private unnamed_addr constant [46 x i8] c"Annotation length exceeds offset (reuse mode)\00", align 1
@.str.125 = private unnamed_addr constant [63 x i8] c"Annotation output enabled but ASA limited by ASAR (reuse mode)\00", align 1
@.str.126 = private unnamed_addr constant [68 x i8] c"Data offset correction exceeds input frame data length (reuse mode)\00", align 1
@.str.127 = private unnamed_addr constant [66 x i8] c"Annotation output enabled but ASA cannot be expanded (frame list)\00", align 1
@.str.128 = private unnamed_addr constant [26 x i8] c"Unsupported IF reuse mode\00", align 1
@.str.129 = private unnamed_addr constant [24 x i8] c"Unsupported FL use mode\00", align 1
@.str.130 = private unnamed_addr constant [25 x i8] c"Unsupported RJD use mode\00", align 1
@.str.131 = private unnamed_addr constant [39 x i8] c"Unsupported inline descriptor use mode\00", align 1
@.str.132 = private unnamed_addr constant [30 x i8] c"Table buffer pool 0 depletion\00", align 1
@.str.133 = private unnamed_addr constant [30 x i8] c"Table buffer pool 1 depletion\00", align 1
@.str.134 = private unnamed_addr constant [46 x i8] c"Data buffer pool 0 depletion, no OF allocated\00", align 1
@.str.135 = private unnamed_addr constant [46 x i8] c"Data buffer pool 1 depletion, no OF allocated\00", align 1
@.str.136 = private unnamed_addr constant [51 x i8] c"Data buffer pool 0 depletion, partial OF allocated\00", align 1
@.str.137 = private unnamed_addr constant [51 x i8] c"Data buffer pool 1 depletion, partial OF allocated\00", align 1
@.str.138 = private unnamed_addr constant [15 x i8] c"FLC read error\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"FL read error\00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"FL write error\00", align 1
@.str.141 = private unnamed_addr constant [19 x i8] c"OF SGT write error\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"PTA read error\00", align 1
@.str.143 = private unnamed_addr constant [16 x i8] c"PTA write error\00", align 1
@.str.144 = private unnamed_addr constant [25 x i8] c"OF SGT F-bit write error\00", align 1
@.str.145 = private unnamed_addr constant [16 x i8] c"ASA write error\00", align 1
@.str.146 = private unnamed_addr constant [22 x i8] c"FLC[ICR]=0 ICID error\00", align 1
@.str.147 = private unnamed_addr constant [22 x i8] c"FLC[ICR]=1 ICID error\00", align 1
@.str.148 = private unnamed_addr constant [43 x i8] c"source of ICID flush not trusted (BDI = 0)\00", align 1
@__func__.report_jr_status = private unnamed_addr constant [17 x i8] c"report_jr_status\00", align 1
@__func__.report_cond_code_status = private unnamed_addr constant [24 x i8] c"report_cond_code_status\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author469, ptr @__UNIQUE_ID_description468, ptr @__UNIQUE_ID_license467, ptr @__ksymtab_caam_dump_sg, ptr @__ksymtab_caam_imx, ptr @__ksymtab_caam_little_end, ptr @__ksymtab_caam_ptr_sz, ptr @__ksymtab_caam_strstatus], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @caam_dump_sg(ptr nocapture %0, i32 %1, i32 %2, i32 %3, ptr nocapture %4, i32 %5, i1 zeroext %6) #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @caam_strstatus(ptr noundef %0, i32 noundef %1, i1 zeroext %2) #1 {
  %4 = lshr i32 %1, 28
  %5 = getelementptr [16 x %struct.stat_src], ptr @caam_strstatus.status_src, i32 0, i32 %4
  %6 = getelementptr [16 x %struct.stat_src], ptr @caam_strstatus.status_src, i32 0, i32 %4, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 %8(ptr noundef %0, i32 noundef %1, ptr noundef %7) #7
  br label %16

12:                                               ; preds = %3
  %13 = icmp eq ptr %7, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %4, ptr noundef nonnull %7) #8
  br label %16

15:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %4) #8
  br label %16

16:                                               ; preds = %15, %14, %10
  %17 = phi i32 [ %11, %10 ], [ -22, %15 ], [ -22, %14 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @report_ccb_status(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = alloca [3 x i8], align 1
  %5 = alloca [3 x i8], align 1
  %6 = lshr i32 %1, 4
  %7 = and i32 %1, 15
  %8 = lshr i32 %1, 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, i8 0, i32 3, i1 false)
  %9 = and i32 %1, 134217728
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, ptr @.str.12, ptr @.str.11
  %12 = and i32 %6, 15
  %13 = icmp ult i32 %12, 13
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef %12)
  br label %27

16:                                               ; preds = %3
  %17 = getelementptr [13 x ptr], ptr @cha_id_list, i32 0, i32 %12
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq i32 %12, 5
  %20 = icmp ult i32 %7, 13
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = getelementptr [13 x ptr], ptr @rng_err_id_list, i32 0, i32 %7
  %24 = load ptr, ptr %23, align 4
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22, %16, %14
  %28 = phi ptr [ @.str.9, %14 ], [ %18, %22 ], [ %18, %16 ]
  %29 = getelementptr [16 x ptr], ptr @err_id_list, i32 0, i32 %7
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi ptr [ %28, %27 ], [ %18, %22 ]
  %33 = phi ptr [ %30, %27 ], [ %24, %22 ]
  %34 = icmp eq i32 %7, 10
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = tail call i32 @___ratelimit(ptr noundef nonnull @report_ccb_status._rs, ptr noundef nonnull @__func__.report_ccb_status) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = and i32 %8, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %11, i32 noundef %39, ptr noundef %32, ptr noundef nonnull %4, ptr noundef %33, ptr noundef nonnull %5) #8
  br label %40

40:                                               ; preds = %38, %35, %31
  %41 = phi i32 [ -74, %31 ], [ -22, %38 ], [ -22, %35 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #7
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @report_jump_status(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef %1, ptr noundef %2, ptr noundef nonnull @__func__.report_jump_status) #8
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @report_deco_status(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false)
  %5 = trunc i32 %1 to i8
  br label %6

6:                                                ; preds = %11, %3
  %7 = phi i32 [ 0, %3 ], [ %12, %11 ]
  %8 = getelementptr [52 x %struct.anon.144], ptr @desc_error_list, i32 0, i32 %7
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, %5
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = add nuw nsw i32 %7, 1
  %13 = icmp eq i32 %12, 52
  br i1 %13, label %17, label %6

14:                                               ; preds = %6
  %15 = getelementptr [52 x %struct.anon.144], ptr @desc_error_list, i32 0, i32 %7, i32 1
  %16 = load ptr, ptr %15, align 4
  br label %20

17:                                               ; preds = %11
  %18 = and i32 %1, 255
  %19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi ptr [ %16, %14 ], [ @.str.54, %17 ]
  %22 = and i32 %1, 134217728
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, ptr @.str.12, ptr @.str.11
  %25 = lshr i32 %1, 8
  %26 = and i32 %25, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.55, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %24, i32 noundef %26, ptr noundef nonnull %21, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #7
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @report_qi_status(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false)
  %5 = trunc i32 %1 to i8
  br label %6

6:                                                ; preds = %11, %3
  %7 = phi i32 [ 0, %3 ], [ %12, %11 ]
  %8 = getelementptr [43 x %struct.anon.145], ptr @qi_error_list, i32 0, i32 %7
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, %5
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = add nuw nsw i32 %7, 1
  %13 = icmp eq i32 %12, 43
  br i1 %13, label %17, label %6

14:                                               ; preds = %6
  %15 = getelementptr [43 x %struct.anon.145], ptr @qi_error_list, i32 0, i32 %7, i32 1
  %16 = load ptr, ptr %15, align 4
  br label %20

17:                                               ; preds = %11
  %18 = and i32 %1, 255
  %19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi ptr [ %16, %14 ], [ @.str.54, %17 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.106, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %21, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #7
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @report_jr_status(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef %1, ptr noundef %2, ptr noundef nonnull @__func__.report_jr_status) #8
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @report_cond_code_status(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef %1, ptr noundef %2, ptr noundef nonnull @__func__.report_cond_code_status) #8
  ret i32 -22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
