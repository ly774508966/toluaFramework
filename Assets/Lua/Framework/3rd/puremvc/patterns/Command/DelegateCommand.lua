local class = require 'middleclass'

DelegateCommand = class('DelegateCommand', ICommand)

function DelegateCommand:initialize(action)
	self.m_action = action
end

function DelegateCommand:Execute(notification)
	self.m_action(notification)
end