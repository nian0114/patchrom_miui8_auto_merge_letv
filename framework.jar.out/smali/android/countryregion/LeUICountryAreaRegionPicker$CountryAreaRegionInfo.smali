.class public Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;
.super Ljava/lang/Object;
.source "LeUICountryAreaRegionPicker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/countryregion/LeUICountryAreaRegionPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountryAreaRegionInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public mCountryCode:Ljava/lang/String;

.field public mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mLabel:Ljava/lang/String;

    .line 168
    iput-object p2, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mCountryCode:Ljava/lang/String;

    .line 169
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;)I
    .locals 3
    .param p1, "another"    # Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    .prologue
    .line 186
    # getter for: Landroid/countryregion/LeUICountryAreaRegionPicker;->sCollator:Ljava/text/Collator;
    invoke-static {}, Landroid/countryregion/LeUICountryAreaRegionPicker;->access$200()Ljava/text/Collator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 187
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    # setter for: Landroid/countryregion/LeUICountryAreaRegionPicker;->sCollator:Ljava/text/Collator;
    invoke-static {v0}, Landroid/countryregion/LeUICountryAreaRegionPicker;->access$202(Ljava/text/Collator;)Ljava/text/Collator;

    .line 188
    const-string v0, "LeUICountryAreaRegionPicker"

    const-string v1, "Collator is not initialized before localeInfo compareTo another."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    # getter for: Landroid/countryregion/LeUICountryAreaRegionPicker;->sCollator:Ljava/text/Collator;
    invoke-static {}, Landroid/countryregion/LeUICountryAreaRegionPicker;->access$200()Ljava/text/Collator;

    move-result-object v0

    iget-object v1, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mLabel:Ljava/lang/String;

    iget-object v2, p1, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 161
    check-cast p1, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    invoke-virtual {p0, p1}, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->compareTo(Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    if-ne p0, p1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v1

    .line 196
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 198
    check-cast v0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    .line 200
    .local v0, "that":Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;
    iget-object v3, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mLabel:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mLabel:Ljava/lang/String;

    iget-object v4, v0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mLabel:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 201
    :cond_6
    iget-object v3, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mCountryCode:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mCountryCode:Ljava/lang/String;

    iget-object v4, v0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v3, v0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mCountryCode:Ljava/lang/String;

    if-nez v3, :cond_7

    goto :goto_0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v2, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mLabel:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 208
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mCountryCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 209
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 207
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
