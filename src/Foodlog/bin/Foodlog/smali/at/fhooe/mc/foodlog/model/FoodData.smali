.class public Lat/fhooe/mc/foodlog/model/FoodData;
.super Ljava/lang/Object;
.source "FoodData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    strict = false
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x67387ee730e212e4L


# instance fields
.field aggregate_state:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field alcohol_gram:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field amount:I
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field amount_measuring_system:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field df_gram:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field fat_gram:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field kcal:I
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field kh_gram:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field kj:I
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field m_calcium_mg:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field m_eisen_mg:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field m_kupfer_mg:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field m_magnesium_mg:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field m_natrium_mg:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field m_zink_mg:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field protein_gram:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field sugar_gram:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field v_a_mg:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field v_b12_mg:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field v_b1_mg:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field v_b2_mg:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field v_b6_mg:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field v_c_mg:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field v_d_mg:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field water_gram:D
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAggregate_state()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->aggregate_state:Ljava/lang/String;

    return-object v0
.end method

.method public getAlcohol_gram()D
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->alcohol_gram:D

    return-wide v0
.end method

.method public getAmount()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->amount:I

    return v0
.end method

.method public getAmount_measuring_system()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->amount_measuring_system:Ljava/lang/String;

    return-object v0
.end method

.method public getDf_gram()D
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->df_gram:D

    return-wide v0
.end method

.method public getFat_gram()D
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->fat_gram:D

    return-wide v0
.end method

.method public getKcal()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->kcal:I

    return v0
.end method

.method public getKh_gram()D
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->kh_gram:D

    return-wide v0
.end method

.method public getKj()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->kj:I

    return v0
.end method

.method public getM_calcium_mg()D
    .locals 2

    .prologue
    .line 246
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->m_calcium_mg:D

    return-wide v0
.end method

.method public getM_eisen_mg()D
    .locals 2

    .prologue
    .line 238
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->m_eisen_mg:D

    return-wide v0
.end method

.method public getM_kupfer_mg()D
    .locals 2

    .prologue
    .line 278
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->m_kupfer_mg:D

    return-wide v0
.end method

.method public getM_magnesium_mg()D
    .locals 2

    .prologue
    .line 254
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->m_magnesium_mg:D

    return-wide v0
.end method

.method public getM_natrium_mg()D
    .locals 2

    .prologue
    .line 262
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->m_natrium_mg:D

    return-wide v0
.end method

.method public getM_zink_mg()D
    .locals 2

    .prologue
    .line 270
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->m_zink_mg:D

    return-wide v0
.end method

.method public getProtein_gram()D
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->protein_gram:D

    return-wide v0
.end method

.method public getSugar_gram()D
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->sugar_gram:D

    return-wide v0
.end method

.method public getV_a_mg()D
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->v_a_mg:D

    return-wide v0
.end method

.method public getV_b12_mg()D
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->v_b12_mg:D

    return-wide v0
.end method

.method public getV_b1_mg()D
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->v_b1_mg:D

    return-wide v0
.end method

.method public getV_b2_mg()D
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->v_b2_mg:D

    return-wide v0
.end method

.method public getV_b6_mg()D
    .locals 2

    .prologue
    .line 206
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->v_b6_mg:D

    return-wide v0
.end method

.method public getV_c_mg()D
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->v_c_mg:D

    return-wide v0
.end method

.method public getV_d_mg()D
    .locals 2

    .prologue
    .line 230
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->v_d_mg:D

    return-wide v0
.end method

.method public getWater_gram()D
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lat/fhooe/mc/foodlog/model/FoodData;->water_gram:D

    return-wide v0
.end method

.method public setAggregate_state(Ljava/lang/String;)V
    .locals 0
    .parameter "aggregate_state"

    .prologue
    .line 106
    iput-object p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->aggregate_state:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setAlcohol_gram(D)V
    .locals 0
    .parameter "alcohol_gram"

    .prologue
    .line 178
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->alcohol_gram:D

    .line 179
    return-void
.end method

.method public setAmount(I)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 96
    iput p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->amount:I

    .line 97
    return-void
.end method

.method public setAmount_measuring_system(Ljava/lang/String;)V
    .locals 0
    .parameter "amount_measuring_system"

    .prologue
    .line 290
    iput-object p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->amount_measuring_system:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setDf_gram(D)V
    .locals 0
    .parameter "df_gram"

    .prologue
    .line 162
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->df_gram:D

    .line 163
    return-void
.end method

.method public setFat_gram(D)V
    .locals 0
    .parameter "fat_gram"

    .prologue
    .line 130
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->fat_gram:D

    .line 131
    return-void
.end method

.method public setKcal(I)V
    .locals 0
    .parameter "kcal"

    .prologue
    .line 122
    iput p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->kcal:I

    .line 123
    return-void
.end method

.method public setKh_gram(D)V
    .locals 0
    .parameter "kh_gram"

    .prologue
    .line 138
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->kh_gram:D

    .line 139
    return-void
.end method

.method public setKj(I)V
    .locals 0
    .parameter "kj"

    .prologue
    .line 114
    iput p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->kj:I

    .line 115
    return-void
.end method

.method public setM_calcium_mg(D)V
    .locals 0
    .parameter "m_calcium_mg"

    .prologue
    .line 250
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->m_calcium_mg:D

    .line 251
    return-void
.end method

.method public setM_eisen_mg(D)V
    .locals 0
    .parameter "m_eisen_mg"

    .prologue
    .line 242
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->m_eisen_mg:D

    .line 243
    return-void
.end method

.method public setM_kupfer_mg(D)V
    .locals 0
    .parameter "m_kupfer_mg"

    .prologue
    .line 282
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->m_kupfer_mg:D

    .line 283
    return-void
.end method

.method public setM_magnesium_mg(D)V
    .locals 0
    .parameter "m_magnesium_mg"

    .prologue
    .line 258
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->m_magnesium_mg:D

    .line 259
    return-void
.end method

.method public setM_natrium_mg(D)V
    .locals 0
    .parameter "m_natrium_mg"

    .prologue
    .line 266
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->m_natrium_mg:D

    .line 267
    return-void
.end method

.method public setM_zink_mg(D)V
    .locals 0
    .parameter "m_zink_mg"

    .prologue
    .line 274
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->m_zink_mg:D

    .line 275
    return-void
.end method

.method public setProtein_gram(D)V
    .locals 0
    .parameter "protein_gram"

    .prologue
    .line 154
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->protein_gram:D

    .line 155
    return-void
.end method

.method public setSugar_gram(D)V
    .locals 0
    .parameter "sugar_gram"

    .prologue
    .line 146
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->sugar_gram:D

    .line 147
    return-void
.end method

.method public setV_a_mg(D)V
    .locals 0
    .parameter "v_a_mg"

    .prologue
    .line 186
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->v_a_mg:D

    .line 187
    return-void
.end method

.method public setV_b12_mg(D)V
    .locals 0
    .parameter "v_b12_mg"

    .prologue
    .line 218
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->v_b12_mg:D

    .line 219
    return-void
.end method

.method public setV_b1_mg(D)V
    .locals 0
    .parameter "v_b1_mg"

    .prologue
    .line 194
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->v_b1_mg:D

    .line 195
    return-void
.end method

.method public setV_b2_mg(D)V
    .locals 0
    .parameter "v_b2_mg"

    .prologue
    .line 202
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->v_b2_mg:D

    .line 203
    return-void
.end method

.method public setV_b6_mg(D)V
    .locals 0
    .parameter "v_b6_mg"

    .prologue
    .line 210
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->v_b6_mg:D

    .line 211
    return-void
.end method

.method public setV_c_mg(D)V
    .locals 0
    .parameter "v_c_mg"

    .prologue
    .line 226
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->v_c_mg:D

    .line 227
    return-void
.end method

.method public setV_d_mg(D)V
    .locals 0
    .parameter "v_d_mg"

    .prologue
    .line 234
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->v_d_mg:D

    .line 235
    return-void
.end method

.method public setWater_gram(D)V
    .locals 0
    .parameter "water_gram"

    .prologue
    .line 170
    iput-wide p1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->water_gram:D

    .line 171
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "amount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    iget v1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->amount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 70
    iget-object v1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->amount_measuring_system:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v1, "kcal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    iget v1, p0, Lat/fhooe/mc/foodlog/model/FoodData;->kcal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
