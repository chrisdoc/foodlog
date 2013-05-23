.class public final Lcom/mirasense/scanditsdk/twod/ChecksumException;
.super Lcom/mirasense/scanditsdk/twod/ReaderException;
.source "ChecksumException.java"


# static fields
.field private static final instance:Lcom/mirasense/scanditsdk/twod/ChecksumException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/mirasense/scanditsdk/twod/ChecksumException;

    invoke-direct {v0}, Lcom/mirasense/scanditsdk/twod/ChecksumException;-><init>()V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/ChecksumException;->instance:Lcom/mirasense/scanditsdk/twod/ChecksumException;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mirasense/scanditsdk/twod/ReaderException;-><init>()V

    .line 31
    return-void
.end method

.method public static getChecksumInstance()Lcom/mirasense/scanditsdk/twod/ChecksumException;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/mirasense/scanditsdk/twod/ChecksumException;->instance:Lcom/mirasense/scanditsdk/twod/ChecksumException;

    return-object v0
.end method
