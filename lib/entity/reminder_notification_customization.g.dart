// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder_notification_customization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReminderNotificationCustomization
    _$$_ReminderNotificationCustomizationFromJson(Map<String, dynamic> json) =>
        _$_ReminderNotificationCustomization(
          word: json['word'] as String? ?? pill,
          isInVisibleReminderDate:
              json['isInVisibleReminderDate'] as bool? ?? false,
          isInVisiblePillNumber:
              json['isInVisiblePillNumber'] as bool? ?? false,
        );

Map<String, dynamic> _$$_ReminderNotificationCustomizationToJson(
        _$_ReminderNotificationCustomization instance) =>
    <String, dynamic>{
      'word': instance.word,
      'isInVisibleReminderDate': instance.isInVisibleReminderDate,
      'isInVisiblePillNumber': instance.isInVisiblePillNumber,
    };
