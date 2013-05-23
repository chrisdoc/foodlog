.class public interface abstract Lcom/mirasense/scanditsdk/twod/Writer;
.super Ljava/lang/Object;
.source "Writer.java"


# virtual methods
.method public abstract encode(Ljava/lang/String;Lcom/mirasense/scanditsdk/twod/BarcodeFormat;II)Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/WriterException;
        }
    .end annotation
.end method

.method public abstract encode(Ljava/lang/String;Lcom/mirasense/scanditsdk/twod/BarcodeFormat;IILjava/util/Hashtable;)Lcom/mirasense/scanditsdk/twod/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/WriterException;
        }
    .end annotation
.end method
