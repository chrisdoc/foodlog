.class public Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
.super Ljava/lang/Object;
.source "ScanditSDKDiagnostics.java"


# static fields
.field private static sInstance:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;


# instance fields
.field private mExceptionOccured:Z

.field private mExceptions:Ljava/lang/StringBuffer;

.field private mLog:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->sInstance:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->mLog:Ljava/lang/StringBuffer;

    .line 18
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->mExceptions:Ljava/lang/StringBuffer;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->mExceptionOccured:Z

    .line 20
    return-void
.end method

.method private containsInformation()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->mExceptionOccured:Z

    return v0
.end method

.method protected static getInstance()Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->sInstance:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    invoke-direct {v0}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;-><init>()V

    sput-object v0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->sInstance:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    .line 26
    :cond_0
    sget-object v0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->sInstance:Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;

    return-object v0
.end method


# virtual methods
.method protected addException(Ljava/lang/String;Ljava/lang/Exception;Z)V
    .locals 6
    .parameter "message"
    .parameter "e"
    .parameter "important"

    .prologue
    .line 34
    iget-boolean v2, p0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->mExceptionOccured:Z

    if-nez v2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->mExceptionOccured:Z

    .line 35
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 36
    .local v1, writer:Ljava/io/Writer;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 37
    .local v0, printWriter:Ljava/io/PrintWriter;
    invoke-virtual {p2, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 38
    iget-object v2, p0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->mExceptions:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    return-void

    .line 34
    .end local v0           #printWriter:Ljava/io/PrintWriter;
    .end local v1           #writer:Ljava/io/Writer;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected addMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->mLog:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    return-void
.end method

.method protected clean()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->mLog:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->mLog:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 56
    iget-object v0, p0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->mExceptions:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->mExceptions:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 57
    return-void
.end method

.method protected getPlaintext()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->mLog:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->mExceptions:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPlaintextIfErrorOccurred()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->containsInformation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->mLog:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mirasense/scanditsdk/ScanditSDKDiagnostics;->mExceptions:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
