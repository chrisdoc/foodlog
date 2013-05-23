.class public final Lcom/mirasense/scanditsdk/twod/ResultMetadataType;
.super Ljava/lang/Object;
.source "ResultMetadataType.java"


# static fields
.field public static final BYTE_SEGMENTS:Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

.field public static final ERROR_CORRECTION_LEVEL:Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

.field public static final ISSUE_NUMBER:Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

.field public static final ORIENTATION:Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

.field public static final OTHER:Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

.field public static final POSSIBLE_COUNTRY:Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

.field public static final SUGGESTED_PRICE:Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

.field private static final VALUES:Ljava/util/Hashtable;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;->VALUES:Ljava/util/Hashtable;

    .line 38
    new-instance v0, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;->OTHER:Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

    .line 47
    new-instance v0, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

    const-string v1, "ORIENTATION"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;->ORIENTATION:Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

    .line 58
    new-instance v0, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

    const-string v1, "BYTE_SEGMENTS"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;->BYTE_SEGMENTS:Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

    .line 64
    new-instance v0, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

    const-string v1, "ERROR_CORRECTION_LEVEL"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

    .line 69
    new-instance v0, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

    const-string v1, "ISSUE_NUMBER"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;->ISSUE_NUMBER:Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

    .line 75
    new-instance v0, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

    const-string v1, "SUGGESTED_PRICE"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;->SUGGESTED_PRICE:Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

    .line 81
    new-instance v0, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

    const-string v1, "POSSIBLE_COUNTRY"

    invoke-direct {v0, v1}, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;->name:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;->VALUES:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mirasense/scanditsdk/twod/ResultMetadataType;
    .locals 2
    .parameter "name"

    .prologue
    .line 99
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 100
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 102
    :cond_1
    sget-object v1, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;->VALUES:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;

    .line 103
    .local v0, format:Lcom/mirasense/scanditsdk/twod/ResultMetadataType;
    if-nez v0, :cond_2

    .line 104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 106
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mirasense/scanditsdk/twod/ResultMetadataType;->name:Ljava/lang/String;

    return-object v0
.end method
