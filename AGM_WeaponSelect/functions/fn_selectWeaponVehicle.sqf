// by commy2

private ["_vehicle", "_index", "_turret", "_weapons", "_weapon"];

_vehicle = _this select 0;
_index = _this select 1;

_turret = [player] call AGM_Core_fnc_getTurretIndex;

_weapons = _vehicle weaponsTurret _turret;
if (_index > count _weapons - 1) exitWith {};

_weapon = _weapons select _index;

_index = 0;
while {
	_index < 100 && {_vehicle currentWeaponTurret _turret != _weapon}
} do {
	player action ["SwitchWeapon", _vehicle, player, _index];
	_index = _index + 1;
};
