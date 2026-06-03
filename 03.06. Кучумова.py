#1 Инкапсуляция

# class BankAccount:
#     def __init__(self, account_number: str, initial_balance: float):
#         self.__account_number = account_number      
#         if initial_balance < 0:
#             raise ValueError("Недостаточно средств")
#         self.__balance = initial_balance

#     def deposit(self, amount: float):
#         self.__balance += amount

#     def withdraw(self, amount: float):
#         if amount > self.__balance:
#             raise Exception("Недостаточно средств")
#         self.__balance -= amount

#     def get_balance(self):
#         return self.__balance

#     @property
#     def balance(self):
#         return self.__balance



# if __name__ == "__main__":
#     acc = BankAccount("1234567890", 4000.0)
#     print(acc.balance)    
#     acc.deposit(500)
#     print(acc.get_balance())   
#     acc.withdraw(200)
#     print(acc.balance)       


#2 Наследование

# class Vehicle:
#     def __init__(self, brand: str, model: str, year: int):
#         self.brand = brand
#         self.model = model
#         self.year = year
#     def start_engine(self):       
#         return "Двигатель запущен"
#     def info(self):
#         return f"{self.brand} {self.model} ({self.year})"

# class Car(Vehicle):
#     def __init__(self, brand: str, model: str, year: int, number_of_doors: int):
#         super().__init__(brand, model, year)
#         self.number_of_doors = number_of_doors

# class Motorcycle(Vehicle):
#     def __init__(self, brand: str, model: str, year: int, has_sidecar: bool):
#         super().__init__(brand, model, year)
#         self.has_sidecar = has_sidecar
#     def start_engine(self):         
#         return "Рокот мотоцикла"

# vehicles = [
#     Car("Toyota", "Camry", 2020, 4),
#     Motorcycle("Harley", "Davidson", 2019, False)
# ]

# for v in vehicles:
#     print(v.info())
#     print(v.start_engine())


#1 «__str__ и __repr__»

# class Student:
#     def __init__(self, name: str, age: int, grade: float):
#         self.name = name
#         self.age = age
#         self.grade = grade

#     def __str__(self):
#         return f"Студент: {self.name}, возраст: {self.age}, балл: {self.grade}"

#     def __repr__(self):
#         return f"Student('{self.name}', {self.age}, {self.grade})"



# s = Student("Рома", 18, 3.0) 
# print(repr(s)) 

#2

class Library:
    def __init__(self):
        self._books = {}  

    def __setitem__(self, title: str, author: str):
        self._books[title] = author

    def __getitem__(self, title: str):
        return self._books.get(title, "Книга не найдена")

    def __len__(self):
        return len(self._books)

    def __call__(self):
        return list(self._books.keys())



lib = Library()


lib["Война и мир"] = "Лев Толстой"
lib["Преступление и наказание"] = "Фёдор Достоевский"
lib["Мастер и Маргарита"] = "Михаил Булгаков"

print(lib["Война и мир"])          
print(lib["Несуществующая книга"])


print(len(lib))              

print(lib())             