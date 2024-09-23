// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_regiersterion.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AccountRegiersterionAdapter extends TypeAdapter<AccountRegiersterion> {
  @override
  final int typeId = 12;

  @override
  AccountRegiersterion read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AccountRegiersterion()
      ..createdDate = fields[11] as DateTime
      ..userAccount = (fields[12] as List).cast<UserAccountModel>();
  }

  @override
  void write(BinaryWriter writer, AccountRegiersterion obj) {
    writer
      ..writeByte(2)
      ..writeByte(11)
      ..write(obj.createdDate)
      ..writeByte(12)
      ..write(obj.userAccount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountRegiersterionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
