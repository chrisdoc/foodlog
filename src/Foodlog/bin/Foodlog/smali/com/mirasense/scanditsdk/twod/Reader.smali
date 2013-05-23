.class public interface abstract Lcom/mirasense/scanditsdk/twod/Reader;
.super Ljava/lang/Object;
.source "Reader.java"


# virtual methods
.method public abstract decode(Lcom/mirasense/scanditsdk/twod/BinaryBitmap;)Lcom/mirasense/scanditsdk/twod/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;,
            Lcom/mirasense/scanditsdk/twod/ChecksumException;,
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation
.end method

.method public abstract decode(Lcom/mirasense/scanditsdk/twod/BinaryBitmap;Ljava/util/Hashtable;)Lcom/mirasense/scanditsdk/twod/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mirasense/scanditsdk/twod/NotFoundException;,
            Lcom/mirasense/scanditsdk/twod/ChecksumException;,
            Lcom/mirasense/scanditsdk/twod/FormatException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method
