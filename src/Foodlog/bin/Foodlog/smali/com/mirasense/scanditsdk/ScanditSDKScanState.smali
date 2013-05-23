.class public Lcom/mirasense/scanditsdk/ScanditSDKScanState;
.super Ljava/lang/Object;
.source "ScanditSDKScanState.java"


# instance fields
.field public closeToCode:Z

.field public codeDecoded:Z

.field public codeMightBePresent:Z

.field public codeNumber:Ljava/lang/String;

.field public codeType:Ljava/lang/String;

.field public counter:I

.field public counterCloseToCodeChanged:I

.field public counterCodeDecodedChanged:I

.field public counterCodeMightBePresentChanged:I

.field public counterRoughPosValidChanged:I

.field public ex0:I

.field public ex1:I

.field public ex2:I

.field public ex3:I

.field public ey0:I

.field public ey1:I

.field public ey2:I

.field public ey3:I

.field public luckyShotCodeNumber:Ljava/lang/String;

.field public luckyShotCodeType:Ljava/lang/String;

.field public roughCodePositionValid:Z

.field public rx0:I

.field public rx1:I

.field public rx2:I

.field public rx3:I

.field public ry0:I

.field public ry1:I

.field public ry2:I

.field public ry3:I

.field public scanningTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0}, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->reset()V

    .line 80
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeNumber:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeType:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeNumber:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->luckyShotCodeType:Ljava/lang/String;

    .line 94
    iput-boolean v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeDecoded:Z

    .line 98
    iput-boolean v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->closeToCode:Z

    .line 102
    iput-boolean v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->codeMightBePresent:Z

    .line 110
    iput-boolean v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->roughCodePositionValid:Z

    .line 111
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx0:I

    .line 112
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry0:I

    .line 113
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx1:I

    .line 114
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry1:I

    .line 115
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx2:I

    .line 116
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry2:I

    .line 117
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->rx3:I

    .line 118
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ry3:I

    .line 126
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex0:I

    .line 127
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey0:I

    .line 128
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex1:I

    .line 129
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey1:I

    .line 130
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex2:I

    .line 131
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey2:I

    .line 132
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ex3:I

    .line 133
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->ey3:I

    .line 137
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeDecodedChanged:I

    .line 138
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCloseToCodeChanged:I

    .line 139
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterCodeMightBePresentChanged:I

    .line 140
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counterRoughPosValidChanged:I

    .line 143
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->counter:I

    .line 145
    iput v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKScanState;->scanningTime:I

    .line 146
    return-void
.end method
